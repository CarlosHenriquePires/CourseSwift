import UIKit
import Foundation

var nomes = ["Carlos","Henrique","Cintia","Dantas"]

print(nomes.sorted())


// lhs = left hand side = lado esquerdo
// rhs = right hand side = lado direito

nomes.sort{(lhs:String, rhs:String)-> Bool in
    lhs > rhs
}

let descending = nomes.sorted(by: <)

print(descending)

let array1 = [1,3,5,7]
let array2 = [2,4,6,8]

let allArray = array1 + array2

print(allArray)

/*
 Map
*/

var notas = [7,5,9,1]
var novasNotas: [Int] = []

for nota in notas{
    let notaTemp = nota + 1
    novasNotas.append(notaTemp)
}

print(notas)
print(novasNotas)

// map utiliza Closures
notas = notas.map({ res in
    return res + 2
})

//ou

notas = notas.map{$0 * 2} // $0 pegando o primeiro parametro da closures (res do map anterior)

print(notas)


/*
 Filter
*/

let alunosNotasAprovados:[Int] = [8,9,5,2,7,6]
var alunosAprovados:[Int] = []

for nota in alunosNotasAprovados{
    if nota >= 6{
        alunosAprovados.append(nota)
    }
}



alunosAprovados = alunosNotasAprovados.filter({ res in
        return res >= 6
})

alunosAprovados = alunosNotasAprovados.filter{ $0 >= 6 }


/*
 Reduce
 */

var soma:Int = 0

var valores:[Int] = [2,3,5,7,9,0]

for valor in valores {
    soma+=valor
}

print(soma)


soma = valores.reduce(0,{$0+$1}) // O 0 é um valor "externo" que pode ser somado
soma = valores.reduce(0,+)

print(soma)





