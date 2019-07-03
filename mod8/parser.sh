#!/usr/bin/env bash
ARQUIVO_DE_CONFIGURACAO="$1"

[ ! -e "$ARQUIVO_DE_CONFIGURACAO" ] && echo "ERRO. Arquivo não existe."    && exit 1
[ ! -r "$ARQUIVO_DE_CONFIGURACAO" ] && echo "ERRO. Sem acesso de leitura." && exit 1

while read -r linha
do
  [ "$(echo $linha | cut -c1)" = "#" ] && continue # se fo comentario, proximo
  [ ! "$linha" ] && continue #se for linha em branco, proximo

  chave="$(echo $linha | cut -d = -f 1)"
  valor="$(echo $linha | cut -d = -f 2)"

  echo "CONF_$chave=$valor"
done < "$ARQUIVO_DE_CONFIGURACAO"
