#!/bin/bash 

# second script script in bash 



#!/bin/bash
x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "================================================"
echo "Mini script"
echo "Criado por: victor maia"
echo ""
echo "1)Instalar vlc"
echo""
echo "2)Remover vlc"
echo""
echo "3)Corrigir erros"
echo""
echo "================================================"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "================================================"

case "$x" in


    1)
      echo "para instalar vlc tecle 1"
      read nome
      sudo apt-get install vlc
      sleep 5

echo "================================================"
;;
    2)
      echo "tecle 2 para Remover vlc?"
      read nome
      sudo apt-get remove --purge vlc
      sleep 5
echo "================================================"
;;
   
    
    3)
    echo "Reparando..."
    sudo dpkg --configure -a
    sleep 5

echo "================================================"
 ;;
    

*)
        echo "Opção inválida!"
esac
done

}
menu