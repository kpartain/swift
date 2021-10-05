//PROTOCOLS

// swift is referred to as a protocol-oriented language
// it can still be OOP but protocol is higher importance

//protocol essentially means a specific set of procedures, rules or steps to do ___
//a list of methods or enums
//general purpose: create collections, compare instances, sorting, debugging
//app specific: load/save data, spellcheck, resize UIs

protocol MyProtocol {
    //required methods
    func doThisFirst()
    //required properties
    var name: String {get}
}

struct MyStruct : MyProtocol {
    func doThisFirst() {
        print("Now this runs")
    }
    var name: String {
        return "required property"
    }
}

//error handling

enum SomeError: Error {
    case noConnection
    case serverNotFound
    case authenticationFailed
}

func checkStat(server: Int) -> String {
    switch server {
    case 1:
        print("This message")
    case 2:
        print("Another")
    default:
        print("Default")
    }
    return "Success"
}

let result = checkStat(server: 2)
print(result)
