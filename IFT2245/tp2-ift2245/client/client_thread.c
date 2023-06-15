/* This `define` tells unistd to define usleep and random.  */
#define _XOPEN_SOURCE 500

#include "client_thread.h"

int port_number = -1;
int num_request_per_client = -1;
int num_resources = -1;
int *provisioned_resources = NULL;

// Variable d'initialisation des threads clients.
unsigned int count = 0;

void* client_dispatch(int socket_fd, cmd_header_t header, int expected);


// Variable du journal.
// Nombre de requête acceptée (ACK reçus en réponse à REQ)
unsigned int count_accepted = 0;

// Nombre de requête en attente (WAIT reçus en réponse à REQ)
unsigned int count_on_wait = 0;

// Nombre de requête refusée (REFUSE reçus en réponse à REQ)
unsigned int count_invalid = 0;

// Nombre de client qui se sont terminés correctement (ACC reçu en réponse à END)
unsigned int count_dispatched = 0;

// Nombre total de requêtes envoyées.
unsigned int request_sent = 0;

//boolean representant l'etat de la config du server
int server_not_config = 1;

//Semaphore pour la configuration du server
sem_t config_server; 


// Vous devez modifier cette fonction pour faire l'envoie des requêtes
// Les ressources demandées par la requête doivent être choisies aléatoirement
// (sans dépasser le maximum pour le client). Elles peuvent être positives
// ou négatives.
// Assurez-vous que la dernière requête d'un client libère toute les ressources
// qu'il a jusqu'alors accumulées.
void
send_request (int client_id, int request_id, int socket_fd)
{

  // TP2 TODO

  fprintf (stdout, "Client %d is sending its %d request\n", client_id,
      request_id);

  // TP2 TODO:END

}

//Fonction d'initialisation des petit client
void
send_init(int client_id, int* ressources, int socket_fd)
{ 
  struct cmd_header_t header;
  //Acquiere le mutex pour configurer le server
  sem_wait(&config_server);
  if(server_not_config){
    int request[3] {BEGIN, 1, randint(-1,-1)};
    send(socket_fd,request,sizeof(int)*3,0);
    fprintf(stdout, "Client %d is configuring the server sending rand number %d\n", client_id,request[2]);
    int len = read_socket(socket_fd, &header, sizeof(header), 1000);
    if(len < 0) {
      return; //should return error message
    }
    //get response 
    int args[header.nb_args];
    int end = read_socket(socket_fd, &args, sizeof(int)*header.nb_args,1000);
    printf("Received command=%d, nb_args=%d, premier argument=%d\n", header.cmd, header.nb_args,args[0]);
    if(header.cmd == ACK && args[0] == request[2]){
      server_not_config = 0;
      int request[2 + num_resources];
      request[0] = CONF;
      request[1] = num_resources;
      for(int i = 2; i < num_resources; i++){
        request[i] = provisioned_resources[i-2];
      }
      send(socket_fd, request, sizeof(int)*(2+num_resources), 0);
      int end = read_socket(socket_fd, &args, sizeof(int)*header.nb_args,1000);
      printf("Received command=%d, nb_args=%d, premier argument=%d\n", header.cmd, header.nb_args,args[0]);
      if(header.cmd == ACK)

    }
    else { 
      sem_post(&config_server);
      goto send_init; 
    }
  }
  int request;
}


void *
ct_code (void *param)
{
  int socket_fd = -1;
  client_thread *ct = (client_thread *) param;
  //Determine le maximum de ressources qui se doit d'etre allouer
  //au client
  int max_ressources[num_resources];
  for (int i = 0; i < num_resources; i++){
      max_ressources[i] = randint(provisioned_resources[i],0);
  }
  printf("Max ressources allocated to thread %d\n", ct->id);

  //Initialisation du socket cote client
  //Pis sur https://www.geeksforgeeks.org/socket-programming-cc/
  struct sockaddr_in address; 
  struct sockaddr_in serv_addr; 
  if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) 
    { 
        printf("\n Socket creation error \n"); 
        return -1; 
    } 
  memset(&serv_addr, '0', sizeof(serv_addr));   
  serv_addr.sin_family = AF_INET; 
  serv_addr.sin_port = htons(port_number); 
       
  // Convert IPv4 and IPv6 addresses from text to binary form 
  if(inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr)<=0)  
    { 
        printf("\nInvalid address/ Address not supported \n"); 
    }

  if (connect(socket_fd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) 
    { 
        printf("\nConnection Failed \n"); 
        return -1; 
    }

  send_init:
  //Initialisation du thread
  send_init(ct->id, max_ressources, socket_fd);


  for (unsigned int request_id = 0; request_id < num_request_per_client;
      request_id++)
  {

    // TP2 TODO
    // Vous devez ici coder, conjointement avec le corps de send request,
    // le protocole d'envoi de requête.

    send_request (ct->id, request_id, socket_fd);

    // TP2 TODO:END

    /* Attendre un petit peu (0s-0.1s) pour simuler le calcul.  */
    usleep (random () % (100 * 1000));
    /* struct timespec delay;
     * delay.tv_nsec = random () % (100 * 1000000);
     * delay.tv_sec = 0;
     * nanosleep (&delay, NULL); */
  }

  pthread_exit (NULL);
}


//
// Vous devez changer le contenu de cette fonction afin de régler le
// problème de synchronisation de la terminaison.
// Le client doit attendre que le serveur termine le traitement de chacune
// de ses requêtes avant de terminer l'exécution.
//
void
ct_wait_server ()
{

  // TP2 TODO

  sleep (4);

  // TP2 TODO:END

}


void
ct_init (client_thread * ct)
{
  ct->id = count++;
}

void
ct_create_and_start (client_thread * ct)
{
  pthread_attr_init (&(ct->pt_attr));
  pthread_attr_setdetachstate(&(ct->pt_attr), PTHREAD_CREATE_DETACHED);
  pthread_create (&(ct->pt_tid), &(ct->pt_attr), &ct_code, ct);
}

//
// Affiche les données recueillies lors de l'exécution du
// serveur.
// La branche else ne doit PAS être modifiée.
//
void
st_print_results (FILE * fd, bool verbose)
{
  if (fd == NULL)
    fd = stdout;
  if (verbose)
  {
    fprintf (fd, "\n---- Résultat du client ----\n");
    fprintf (fd, "Requêtes acceptées: %d\n", count_accepted);
    fprintf (fd, "Requêtes : %d\n", count_on_wait);
    fprintf (fd, "Requêtes invalides: %d\n", count_invalid);
    fprintf (fd, "Clients : %d\n", count_dispatched);
    fprintf (fd, "Requêtes envoyées: %d\n", request_sent);
  }
  else
  {
    fprintf (fd, "%d %d %d %d %d\n", count_accepted, count_on_wait,
        count_invalid, count_dispatched, request_sent);
  }
}

void* client_dispatch(int socket_fd, cmd_header_t header, int expected) {
  if(header.cmd != expected) {
    goto send_init;
  }
}