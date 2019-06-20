#!/usr/bin/env bash
#
# listaUsuarios.sh - extrai usuários de /etc/passwd
#
# Site:       https://4fasters.com.br
# Autor:      Mateus Müller
# Manutenção: Mateus Müller
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair os usuários do /etc/paswd, havendo possibilidade de colocar em maiúsculo e em ordem alfabética
#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo ficará em ordem alfabética e maiúsculo
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 19.06.2019, Mateus:
#     -Adicionado -s, -h, -v
#   v1.1 19.06.2019, Mateus:
#     -Trocado IF pelo CASE
#     -Adicionado basename
#   v1.2 19.06.2019, Mateus:
#     -Adicionado 2 flags
#     -Adicionado opção -m
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
 $(basename $0) - [OPÇÕES]

 -h - Menu de ajuda
 -v - Versão
 -s - Ordenar a saída
 -m - Coloca em maiúsculo
"
VERSAO="v1.2"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0 ;;
  -v) echo "$VERSAO" && exit 0       ;;
  -s) CHAVE_ORDENA=1                 ;;
  -m) CHAVE_MAIUSCULO=1              ;;
   *) echo "$USUARIOS" && exit 0     ;;
esac


[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort
[ $CHAVE_MAIUSCULO -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]
# ------------------------------------------------------------------------ #
