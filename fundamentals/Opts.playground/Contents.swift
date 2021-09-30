//optionals

//nil != null
//nil means optional potentially with no value,
//null means no memory pointer

//nil needs to be converted

var regularInt: Int
var optionalInt: Int?

//can set values
regularInt = 100
optionalInt = 100

//check for nil value
if optionalInt != nil {
    var unwrappedInt = optionalInt!
}


//optional binding - "binding" the value after unwrapping, if there is a value, without explicitly checking for non-nil
//if you force unwrap an optional, and the optional doesn't have a value, the program will crash

//if let: unwrappedInt will only become a variable if optionalInt has a value to be unwrapped
//then this code block will run
if let unwrappedInt = optionalInt {
    print(unwrappedInt)
}
