#!/bin/bash

echo "Teste"

echo "---------------------------------"
#variáveis normais
NOME="Marcelo
Boschi"
echo "$NOME" #sempre usar "" em string, boa prática e respeita formatação

NUMERO_1=24
NUMERO_2=45

TOTAL=$((NUMERO_1+NUMERO_2)) # em uma operação usar $(())

echo $TOTAL # também pode usar com ""

SAIDA_CAT="$(cat /etc/passwd | grep marcelo)"

echo "$SAIDA_CAT"

echo "---------------------------------"
#variáveis reservadas

echo "Parâmetro 1: $1"
echo "Parametro 2: $2"

echo "Todos os Parâmetros : $*"

echo "Quantos parâmetros: $#"

echo "Saída do último comando: $?" # echo #?

echo "PID: $$"

echo $0
