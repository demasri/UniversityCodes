#Devoir 4 : Question b)
#Programme qui renomme les fichiers .txt dans le directory
#ou se trouve le script shell
#Auteur: Audrey Pepin et Daniel El-Masri
#!/bin/sh

communName="$1"
startValue="$3"
temp=0

for file in *.txt
do
    mv -f "$file" "$communName$startValue$temp.txt"
    startValue=$(($startValue+1))
done

startValue="$3"

for file in *.txt
do
    mv -f "$file" "$communName$startValue.txt"
    startValue=$(($startValue+1))
done
