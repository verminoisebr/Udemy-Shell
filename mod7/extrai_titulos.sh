#!/usr/bin/env bash
#
# extrai_titulos.sh - extrai titulos de http://lxer.com
#
# Site:       https://4fasters.com.br
# Autor:      Mateus Müller
# Manutenção: Mateus Müller
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair os titulos da pag. http://lxer.com e gravar em arquivo titulos.txt
#
#  Exemplos:
#      $ ./extrai_titulos.sh
#      Neste exemplo é extraído titulos da pag. http://lxer.com e gravado em arquivo
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 27.06.2019, Mateus:
#     -Montado expressão regular com fator em comum
#     -Criado primeiro codigo com cores
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
ARQUIVO_DE_TITULOS="titulos.txt"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y #Lynx instalado?
# ------------------------------------------------------------------------ #
# ------------------------------- EXECUÇÃO ----------------------------------------- #
lynx -source http://lxer.com | grep blurb | sed 's/^<div.*line">//;s/<\/span.*//' > titulos.txt

while read -r titulo_lxer
do
  echo -e "${VERMELHO}Titulo: ${VERDE}$titulo_lxer"
done < "$ARQUIVO_DE_TITULOS"
# ------------------------------------------------------------------------ #
