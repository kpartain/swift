struct Vector2D {
    var x: Float
    var y: Float
    
    func printCoord(){
        print("x:\(x) y:\(y)")
    }
}

let origin = Vector2D(x: 0, y: 0)
origin.x
origin.y
origin.printCoord()

let north = Vector2D(x: 0, y: 1)
let south = Vector2D(x: 0, y: -1)
let east = Vector2D(x: 1, y: 0)
let west = Vector2D(x: -1, y: 0)


class Shape{
    func area() -> Float {
        return 0
    }
}
class Square: Shape {
    var side: Float
    
    //you must manually generate the initializer compared to struct
    //or provide a default value when defining the attribute
    init(side: Float){
        self.side = side
    }
    
    override func area() -> Float {
        side * side
    }
 }


let mySquare = Square(side: 5)
print(mySquare.area())
