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
#     -
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
 $0 - [OPÇÕES]

 -h - Menu de ajuda
 -v - Versão
 -s - Ordenar a saída
"
VERSAO="v1.0"

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
if [ "$1" = "-h" ]; then
  echo "$MENSAGEM_USO" && exit 0
fi

if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi

if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi

echo "$USUARIOS"

# ------------------------------------------------------------------------ #
