import UIKit

func verifyPalindromo(words:String){
    var tempListChars:[Character]=[]
    var wordReversed:String=""
    var wordWithoutSpace:String=""
    
    words.map { char in
        if(char != " "){
            wordWithoutSpace.append(char)
            tempListChars.insert(char, at: 0)
        }
    }

    tempListChars.map { char in
        if(char != " "){
            wordReversed.append(char)
        }
    }

    print(wordReversed)
    print(wordWithoutSpace)
    
    if wordWithoutSpace.lowercased() == wordReversed.lowercased(){
        print("Essa palavra/frase é um palíndromo")
    }else{
        print("Essa palavra/frase não é um palíndromo")
    }
}

verifyPalindromo(words: "A base do teto desaba")
