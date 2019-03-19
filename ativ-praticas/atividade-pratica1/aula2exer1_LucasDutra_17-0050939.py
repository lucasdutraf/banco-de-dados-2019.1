import os

class Person:
    def __init__(self, name, cpf):
        self.name = name
        self.cpf = cpf

class Vehicle:
    def __init__(self, renavam, model, licensePlate):
        self.renavam = renavam
        self.model = model
        self.licensePlate = licensePlate
        self._owner = {'name': ' ', 'cpf': ''}
    
    def addOwner(self, name, cpf):
        Person(name, cpf)
        self._owner['name'] = name
        self._owner['cpf'] = cpf


print('Bem vindo ao sistema de gerenciamento de carros!!')
array = []

user_input = input("""
----------------------------------------
(1) Inserir um novo veículo ao sistema.
(2) Listar todos os carros inseridos.
(0) Sair do programa.
----------------------------------------
\n 
Digite uma das opções listadas: """)

fileOpened = open('banco.txt', 'a+')
times_repeated = 0
if os.stat('banco.txt').st_size == 0:
    fileOpened.write('RENAVAM   MODELO   PLACA   CPF DO DONO(A)\n')
    
while user_input != '0':

    if user_input == '1':
        user_renavam = input('Digite o renavan do veículo: ')
        user_model = input('Digite o modelo do veículo: ')
        user_licenseplate = input('Digite a placa do veículo: ')
        vehicle = Vehicle(user_renavam, user_model, user_licenseplate)
        user_name = input('Digite o nome do(a) dono(a) do veículo: ')
        user_cpf = input('Digite o CPF do(a) dono(a) do veículo: ')
        vehicle.addOwner(user_name, user_cpf)
        array.append(vehicle)
        fileOpened.write('{} {} {} {}\n'.format(array[times_repeated].renavam, array[times_repeated].model, array[times_repeated].licensePlate, array[times_repeated]._owner['cpf']))

    elif user_input == '2':
        print(array[0])

    else:
        print('Por favor, digite uma opção válida.')

    times_repeated = times_repeated + 1
    user_input = input("""
----------------------------------------
(1) Inserir um novo veículo ao sistema.
(2) Listar todos os carros inseridos.
(0) Sair do programa.
----------------------------------------
\n 
Digite uma das opções listadas: """)


fileOpened.close()
#print('{} {}'.format(array[0].model, array[0].renavam))

# f.write(array[0].renavam)
# f.close()
# print(vehicle._owner['cpf'])''