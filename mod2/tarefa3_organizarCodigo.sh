#!/usr/bin/env bash
#
#tarefa3_organizarCodigo.sh - desenha um triangulo de asteriscos
#Site: www.www.com
#Autor: Fulano
#Manutenção: Fulano / Amigo do Fulano
#-----------------------------------------------------------------------------------------------------------------#
# Este programa irá desenhar um triângulo decrescente asteriscos baseado no intervalo dado
#
#Exemplos:
#   $tarefa3_organizarCodigo.sh 0 100
#   Neste exemplo o triangulo será desenhado utilizando o intervalo de 0 a 100
#-----------------------------------------------------------------------------------------------------------------#
#Histórico:
#
#   v1.0 10.06.2019, Fulano:
#     -programa com opções restritas mas funcional
#   v1.1 19.06.2019, Amigo do Fulano:
#     -aceita mais parâmetros para melhor aproveitamento
#     -tratamento do erro se parâmetro nulo
#-----------------------------------------------------------------------------------------------------------------#
#Testado em:
#    bash 4.4.19
#-----------------------------------------------------------------------------------------------------------------#
#Agradecimentos:
#   Vizinha: Sua beleza me fez encontrar um bug.
#   Irmão da Vizinha: Sugestão de adicionar -f.
#-----------------------------------------------------------------------------------------------------------------#
#
#--------------Variáveis
#
 COMECA=0
 ATE=100
#
#-----------------------------------------------------------------------------------------------------------------#
#--------------Testes
#
 [ $COMECA -ge $ATE ] && exit 1 #existe intervalo para execução?
#
#-----------------------------------------------------------------------------------------------------------------#
#--------------Execução
 for i in $(seq $COMECA $ATE)
  do
   for j in $(seq $i $ATE) #desenhe a maior linha e diminua
    do
     printf "*"
    done
   printf "\n"
  done
#
#-----------------------------------------------------------------------------------------------------------------#
