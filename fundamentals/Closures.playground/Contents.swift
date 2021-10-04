//Closures

//Uses:
//sorting, filtering, working with collections
//animation, fetching data, callbacks, completion handlers
//working with User Interface Controls


//a closure is a type of function
//function = define it, reuse it by calling it
//closure doesn't have a name. ike a lambda or func literal

//function: block of code you intend to call
//closure: block of code you intend to pass

//you can use them with any array methods that expects an (Element) -> Bool
class Book {
    var title: String
    var pageCount: Int
    var readingAge: Int
    init(title: String, pageCount: Int, readingAge: Int){
        self.title = title
        self.pageCount = pageCount
        self.readingAge = readingAge
    }
}
var b1 = Book.init(title: "War and Peace", pageCount: 1000, readingAge: 14)
var b2 = Book.init(title: "Gone with the Wind", pageCount: 500, readingAge: 15)
var b3 = Book.init(title: "Goodnight Moon", pageCount: 12, readingAge: 5)

let bookshelf = [b1, b2, b3]

func compareTwoPageCount(first: Book, second: Book) -> Bool {
    if first.pageCount > second.pageCount {
        return true
    } else {
        return false
    }
}

//do not add the parens after () the method
//we only want to pass the function itself
let pageSortedBooks = bookshelf.sorted(by: compareTwoPageCount)
//this returns a new array sorted by the page numbers

//reduce if you won't reuse
let sortedByClosure = bookshelf.sorted(by: {
    (firstB: Book, secondB: Book) -> Bool
    in
    if firstB.pageCount > secondB.pageCount {
        return true
    } else {
        return false
    }
})

//reduce further as above is redundant
//implicit parameters
let sortedByClosureReduced = bookshelf.sorted(by: {
    if $0.pageCount > $1.pageCount {
        return true
    } else {
        return false
    }
})

//trailing closure for ease of reading

let sortedByClosureReducedMore = bookshelf.sorted(by:) {
    if $0.pageCount > $1.pageCount {
        return true
    } else {
        return false
    }
}

//again
let sortedByClosureReducedMoreAgain = bookshelf.sorted { return $0.pageCount > $1.pageCount }

//recall you don't need the return
let sortedByClosureReducedMoreFinal = bookshelf.sorted {$0.pageCount > $1.pageCount }
