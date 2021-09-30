var score = 100

// if / else
if score > 100 {
    print("More")
} else {
    print("Less")
}
//curly braces are required, parenthesis are not
//must evaluate to a boolean

// switch
switch score {
case 100:
    print("perfect score")
case 80...99:
    print("Good")
case 60..<80:
    print("Less than 80, 60 or more")
default:
    print("Didn't meet the other cases")
}


//while
while score > 80 {
    print("Over 80")
}

// repeat while (do while)
repeat {
    print("Over 80")
    score -= 1
    //give it a way to stop
} while score > 80

//for in loop
let words = ["one", "potato", "pen", "keyboard", "mouse"]
for banana in words {
    print(banana)
}
for potato in 0..<10 {
    print(potato)
    //..< half open (one less than) operator
    //... closed range operator 
}


