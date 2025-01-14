#!/bin/bash

# Exibe uma mensagem de boas-vindas
echo "Olá! Qual é o seu nome?"

# Lê a entrada do usuário
read nome

# Saúda o usuário com o nome informado
echo "Prazer em conhecer você, $nome!"


# Caminho para o arquivo Python
CAMINHO_PARA_PYTHON="/home/rafael/modulo1/python/calculadora.py"

# Executa o arquivo Python
python3 $CAMINHO_PARA_PYTHON



# Funções para as operações da calculadora
def soma(x, y):
    return x + y

def subtracao(x, y):
    return x - y

def multiplicacao(x, y):
    return x * y

def divisao(x, y):
    if y == 0:
        return "Erro! Divisão por zero."
    else:
        return x / y

while True:
    # Menu de operações
    print("\nSelecione a operação:")
    print("1. Soma")
    print("2. Subtração")
    print("3. Multiplicação")
    print("4. Divisão")
    print("5. Sair")

    # Entrada do usuário
    escolha = input("Digite a escolha (1/2/3/4/5): ")

    if escolha == '5':
        print("Saindo...")
        break

    num1 = float(input("Digite o primeiro número: "))
    num2 = float(input("Digite o segundo número: "))

    if escolha == '1':
        print(f"{num1} + {num2} = {soma(num1, num2)}")
    elif escolha == '2':
        print(f"{num1} - {num2} = {subtracao(num1, num2)}")
    elif escolha == '3':
        print(f"{num1} * {num2} = {multiplicacao(num1, num2)}")
    elif escolha == '4':
        print(f"{num1} / {num2} = {divisao(num1, num2)}")
    else:
        print("Opção Inválida")
