#!/usr/bin/env bash

echo "===== for 1"
for (( i = 0; i < 10; i++ )); do
  echo $i
done

echo "===== for 2"

for i in $(seq 10)
do
  echo $i
done

echo "===== for 3 (array)"
Frutas=(
'Laranja'
'Ameixa'
'Abacaxi'
'Repolho'
)
for i in "${Frutas[@]}"; do
  echo "$i"
done

echo "===== while"
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]; do
  echo "${Frutas[$contador]}"
  contador=$(($contador+1))
done
