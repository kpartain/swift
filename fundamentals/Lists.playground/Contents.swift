var restaurants = ["Taco Bell", "Wendys", "Ivars"]
var same: [String] = ["Taco Bell", "Wendys", "Ivars"]
let first = restaurants[0]
restaurants[1] = "Wendy's"
restaurants.append("McDonalds")
restaurants.insert("Del Taco", at: 2)
restaurants.remove(at: 2)


//LOOPS

//prints 0 - 4
for i in 0...4{
    print(i)
}

//prints 0-3 (half range operator)
for i in 0..<4{
    print(i)
}

//length
for index in 0...restaurants.count {
    print(restaurants[index])
}


//WHILE

var loggedOut = true
var loginAttempts = 0
let maxAttempts = 3

func authenticate() -> Bool {
    //just for demo
    return true
}

while loggedOut {
    loggedOut = authenticate()
    loginAttempts += 1
    if(loginAttempts == maxAttempts) {
        print("Too many attempts!")
        break
    }
}
