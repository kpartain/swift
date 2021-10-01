//string interpolation
var one = "Hello"
var two = "World"
print("\(one), \(two)!")

//functions
func showMessage() {
    print("Hello")
}
func showName(name: String) {
    print("Hello, \(name)")
}
func doMath(num1: Int, num2: Int) -> Int {
    num1 + num2
}

//you can write -> Void but you shouldn't. just understamd it returns nothing.
func twoLines(num1: Int, num2: Int, randomWord: String) -> Void {
    print("This has two lines. \(randomWord)")
}


//if you call a function without ignoring the value you get a warming
//you can ignore the return intentionally by assigning to an underscore
func ignoreAReturn() {
    _ = doMath(num1: 1, num2: 2)
}

//not requiring the argument label **still requires the argument
//you can put this in front of some or all or none of the labels
//it is preferred to keep them in - Swift is about clarity rather than brevity
func wayOne(requirement: String){
    print(requirement)
}
func wayTwo(_ requirement: String) {
    print(requirement)
}
wayOne(requirement: "This has the label beside it")
wayTwo("This doesn't")

//aliases for arguments
func difference(from parameterOne: Int, through parameterTwo: Int){
    //from is the external parameter which will only show in subsequent calls
    //you use the second internal parameter within this code block
    //this is done for readabiluty - in the func definition, saying parameter makes sense
    //but later when using it, seeing "difference(from: 10 through: 15)" makes more sense
    print("\(parameterOne), \(parameterTwo)")
}
difference(from: 10, through: 15)


//naming conventions
func showPotato(potato: String) {
    print("\(potato)")
}
showPotato(potato: "banana")
//maybe better to write as
func show(potato: String){
    print("\(potato)")
}
show(potato: "banana")
//think of how the function is called for readability vs what you want to see when you write the func

