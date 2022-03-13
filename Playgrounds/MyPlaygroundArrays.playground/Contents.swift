import UIKit
/*
 Arrays
 
 */
var cars = ["Fiesta","Mustang","AudiTT","Skyline"]

let numbers: [Int] = [0,2,4,6,8,10] // setando o tipo dos valores no array

typealias teste = Int

var arrayTeste: [teste] = [1,2,3] // criando um apelido para o tipo

var tupla:(String,Int,Bool) = ("Carlos",12,false)

print(tupla)

print(cars)

cars.append("Gol") // Insere na ultima posicao

print(cars)

cars.insert("HB20", at: 2)


print(cars)

cars.removeLast() // Remove o ultimo elemento

print(cars)

cars.removeFirst() // Remove o primeiro elemento

print(cars)

print(cars[0]) // Imprime o valor do elemento da primeira posicao do array


