//arrays are 0 based and type safe
//var mutable, let immutable

var letters = ["a", "b", "c"]
let numbers = [0, 1, 2]
var addlLetters = ["d", "e", "f"]

letters.append("z")
letters.append(contentsOf: addlLetters)

let removedElement = letters.remove(at: 1)

//you can initialize and declare an empty array 
var uninitializedAndDeclared: [String] = []
