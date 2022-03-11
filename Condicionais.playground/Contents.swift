import UIKit

let isHidden:Bool = true

if isHidden {
    print("Verdadeiro")
}else{
    print("Falso")
}

var system: String
let company: String = "Apple"

// if comum
if company == "Apple"{
    system = "iOS"
}else{
    system="Android"
}

print(system)

// if ternario
system = company == "Apple" ? "iOS" : "Android"

print(system)
