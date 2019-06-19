#!/usr/bin/env bash



VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
  echo "São iguais."
fi

if [[ "$VAR" = "$VAR2" ]]
then
  echo "São iguais."
fi

if test "$VAR" = "$VAR2"
then
  echo "São iguais."
fi

if [ "$VAR" = "$VAR2" ]
then
  echo "São iguais."
fi

#único comando, use a forma reduzida, para verdadeiro && e para falso || (senão)
[ "$VAR" = "$VAR2" ] && echo "São iguais"
