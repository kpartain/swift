//enumerations || enums
// essentially defining your own type - what makes a String a string? who defines each Type's attributes?
//an enum does this. Not a variable or constant.

enum MediaType {
    case book
    case movie
    case music
    case game
}
//assign it as a enum
var newType: MediaType
//you can assign a type of an Enum
newType = MediaType.book
//once you declare the enum you don't need to actually call it as Enum.type
//you can do .type
newType = .game

//practical example :
// var myTextField: UITextField!
// func configureText(){
//     myTextField.autocorrectionType = .yes
//     .keyboardAppearance = .light
// }


//enum cases/ associated values
enum MediaTypeTwo {
    case book(String)
    case movie(Bool)
    case music(Double)
    case game(Int)
}
var newExample: MediaTypeTwo = .book("Define it")
//so in a switch you ca see
switch newExample {
case .book(let title):
    print("The title is \(title)")
case .music(let duration):
    print("The duration is \(duration)")
default:
    print("Any other case")
}


//structs
//all primitive types are considered structs, not classes (Strings, Bool, etc)
struct Movie{
    //properties
    var title: String
    var length: Int
    var released: Bool
    //methods
    func printDetails(){
        print("Title: \(title) Length: \(length) Released: \(released)")
    }
}
//you must declare all member values to instantiate a struct instance
var up = Movie(title: "Up", length: 100, released: true)
up.length = 120
up.printDetails()
//structs CANT inherit from each other, they are VALUE types not REFERNCE Types
//value means its an independent instance of one thing
//reference type means all istances reference one

//dictionaries
//map, symbol table, associative array
//key value pairs
var states = ["AZ": "Arizona", "WA":"Washington"]
var pending: [String: String]
var alsoPending: [String: Int]
let result = states["AZ"]
//gives "Optional("Arizona")"
//this allows for a non-match or nil
//you can do the unwrap idea
if let stringFound = states["WA"] {
    print("Bring an umbrella to \(stringFound)")
} else {
    print("Not found")
}

//iterate
//for (key, value) both are bananas
for(abreviation, fullName) in states {
    print("\(abreviation), \(fullName)")
}
//to remove something, you can set it to nil - it removes the key value pair, not jsut sets the value to nil
states["AZ"] = nil


//tuples
var myName = "Kara"
var myAge = 28
var isTired = true

var personTuple = (myName, myAge, isTired)

//think of a method returning a tuple
func createPerson()  -> (String, Int, Bool) {
        return ("Kara", 28, true)
}
var me = createPerson()
print("My name is \(me.1)")
let (nameAlias, ageAlias, napAlias) = createPerson()
print(ageAlias)
