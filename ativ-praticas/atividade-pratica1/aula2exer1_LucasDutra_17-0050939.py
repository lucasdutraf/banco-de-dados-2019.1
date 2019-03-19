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


print('Bem vindo ao sistema de gerenciamento de carros!!\n\n')

array = []


if os.path.isfile('./banco.txt'):
    read_fileOpened = open('banco.txt', 'r')
    if os.stat('banco.txt').st_size != 0:
                aux_array = read_fileOpened.readlines()
                aux_array_range = len(aux_array)
                for line in range(aux_array_range):
                    vehicles_values = aux_array[line].split(' ')
                    input_name = vehicles_values[4].strip()
                    aux_vehicle = Vehicle(vehicles_values[0], vehicles_values[1], vehicles_values[2])
                    aux_vehicle.addOwner(input_name, vehicles_values[3])
                    array.append(aux_vehicle)

user_input = input("""
----------------------------------------
(1) Inserir um novo veículo ao sistema.
(2) Listar todos os carros inseridos.
(0) Sair do programa.
----------------------------------------
\n 
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

    elif user_input == '2':
        array.sort(key=lambda x: x._owner['name'])
        print('\n\n--------------------LISTA DE VEÍCULOS-----------------')
        print('\nRENAVAM   MODELO   PLACA   CPF-VINCULADO DONO(A)\n')
        tamanho = len(array)

        for i in range(tamanho):
            print('{} {} {} {} {}\n'.format(array[i].renavam, array[i].model, array[i].licensePlate, array[i]._owner['cpf'], array[i]._owner['name']))
        print('------------------------------------------------------')        
    else:
        print('Por favor, digite uma opção válida.')

    user_input = input("""
----------------------------------------
(1) Inserir um novo veículo ao sistema.
(2) Listar todos os carros inseridos.
(0) Sair do programa.
----------------------------------------
\n 
Digite uma das opções listadas: """)

fileOpened = open('banco.txt', 'w')

array.sort(key=lambda x: x._owner['name'])

tamanho = len(array) 

for i in range(tamanho):
    fileOpened.write('{} {} {} {} {}'.format(array[i].renavam, array[i].model, array[i].licensePlate, array[i]._owner['cpf'], array[i]._owner['name']))
    fileOpened.write('\n')

fileOpened.close()
