import UIKit


var dict: [String:String] = ["name":"Carlos","email":"carluxhenrique@gmail.com"]

print(dict["name"])
print(dict["email"])

var dict2:[String:Any]=["name":"Carlos","age":34]
print(dict2)

var users: [[String: Any]] = [["name":"Carlos","age":34],["name":"Cintia","age":33]]

print(users)

print(users[0]["name"])


users.append(["name":"Guim","age":20]) // adicionando um novo user

print(users)

users.remove(at: 2) // removendo o dic da posicao 2

print(users)

