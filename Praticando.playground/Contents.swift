import UIKit

class User {
    var name:String
    var lastName:String
    var email:String
    
    init(name:String,lastName:String,email:String) {
        self.name = name
        self.lastName = lastName
        self.email = email
    }
    
    func getName()->String{
        return name
    }
    func getLastName()->String{
        return lastName
    }

    func getEmail()->String{
        return email
    }
    
    
    func setName(name:String)->Void{
        self.name = name
    }
    
    func setLastName(lastName:String)->Void{
        self.lastName = lastName
    }
    
    func setEmail(email:String)->Void{
        self.email = email
    }
    
    
    func toString()->Void{
        print("Meu nome é \(name) \(lastName) e meu e-mail é \(email)")
    }
}

var user01:User = User(name: "Carlos", lastName: "Henrique", email: "carluxhenrique@gmail.com")

var user02:User?

user01.toString()

typealias auth = (String,[String:String])->Void

func getDataUser(auth:auth){
    auth("Success",["name":"Guim","lastName":"Pires","email":"guim@gmail.com"])
}

getDataUser { status, result in
    if(status == "Success"){
        user02 = User(name: result["name"]! , lastName: result["lastName"]!, email: result["email"]!)
        }
}

user02?.toString()




    
