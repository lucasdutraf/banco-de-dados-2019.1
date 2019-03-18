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



array = []

while input('digite 0 ou 1') != '0':
    vehicle = Vehicle('123123', 'Monza', 'jhd-1223')
    vehicle.addOwner('aderbal', '09230192309')
    array.append(vehicle)

print(array[2].renavam)



# f = open('banco.txt', 'w+')
# f.write(array[0].renavam)
# f.close()
# print(vehicle._owner['cpf'])''