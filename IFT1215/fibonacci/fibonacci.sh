#Programme Fibonacci en Shell Script
#Auteur: Audrey Pepin et Daniel El-Masri
#!/bin/sh

echo "Entrez l'element de la suite de Fibonnaci: "
read num

f1=0
f2=1

for ((i=0; i<num; i++))
do
    fn=$((f1+f2))
    f1=$f2
    f2=$fn
done

echo "La valeur de l'element $num de la suite fibonacci est: $fn"
