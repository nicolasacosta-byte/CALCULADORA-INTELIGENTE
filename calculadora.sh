#!/bin/bash

# ==========================================
#       CALCULADORA FINANCEIRA
# ==========================================

clear

echo "=========================================="
echo "       CALCULADORA FINANCEIRA"
echo "=========================================="
echo

read -p "Digite seu nome: " nome

echo
echo "Olá, $nome!"
echo "Vamos analisar dois valores."
echo

read -p "Digite o primeiro número: " numero1
read -p "O que representa esse número? " descricao1

echo

read -p "Digite o segundo número: " numero2
read -p "O que representa esse número? " descricao2

echo
echo "=========================================="
echo "              RESULTADO"
echo "=========================================="

echo
echo "Primeiro valor: R$ $numero1"
echo "Descrição: $descricao1"

echo
echo "Segundo valor: R$ $numero2"
echo "Descrição: $descricao2"

soma=$((numero1 + numero2))
diferenca=$((numero2 - numero1))
multiplicacao=$((numero1 * numero2))

echo
echo "------------------------------------------"
echo "              OPERAÇÕES"
echo "------------------------------------------"

echo "Soma dos valores: R$ $soma"
echo "Diferença entre os valores: R$ $diferenca"
echo "Multiplicação: R$ $multiplicacao"

echo
echo "------------------------------------------"
echo "               ANÁLISE"
echo "------------------------------------------"

if [ "$numero1" -gt "$numero2" ]; then
    echo "$descricao1 possui um valor maior que $descricao2."
elif [ "$numero1" -lt "$numero2" ]; then
    echo "$descricao2 possui um valor maior que $descricao1."
else
    echo "Os dois valores são iguais."
fi

echo
echo "=========================================="
echo "Obrigado por utilizar a calculadora, $nome!"
echo "=========================================="
