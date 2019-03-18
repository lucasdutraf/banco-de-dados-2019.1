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
(1) Inserir um novo veículo ao sistema.
(2) Listar todos os carros inseridos.
(0) Sair do programa.\n 
Digite uma das opções listadas: """)
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

    user_input = input("""
(1) Inserir um novo veículo ao sistema.
(2) Listar todos os carros inseridos.
(0) Sair do programa.\n 
Digite uma das opções listadas: """)

print(array[0])



# f = open('banco.txt', 'w+')
# f.write(array[0].renavam)
# f.close()
# print(vehicle._owner['cpf'])''