// map
let array = [1,2,3,4,5,6]
let array2 = array.map{$0 * 10}
print(array2) // [10,20,30,40,50,60]

//Map with a dictionary
let keysAndValues = ["Key1": 0, "Key2": 1]
var keyArray = keysAndValues.map {$0.key}
// you can also add some condtion too
var valueArray = keysAndValues.map {$0.value}
print(keyArray) // ["Key2", "Key1"]
print(valueArray) // [1, 0]

//flatMap
let array = [1,2,3,4,nil]
let array2 = array.flatMap{$0}
print(array2) //[1, 2, 3, 4]

let array = ["abs","adf"]
let array2 = array.flatMap{$0}
print(array2)//["a", "b", "s", "a", "d", "f"]

//compactMap
let arrayOfString = ["1", "2", "3", "three", "four"]
let arrayOfInt = arrayOfString.compactMap { Str in Int(Str)}
print(arrayOfInt) // [1, 2, 3]

//filter
let digitArray = [1,2,3,4,5,6,7,8,9,10]
let evenArray = digitArray.filter {$0 % 2 == 0}
print(evenArray) //[2, 4, 6, 8, 10]

//Filter on the dictionary
let booksAndRate = ["thelionking": 100, "harrypotter": 78]
let filterArrayOfDictionary = booksAndRate.filter{ $1 >= 100}
print(filterArrayOfDictionary) //["thelionking": 100]

//Filtering with an array of objects
struct Book {
    let rate: Int
    let booksName: [String]
}
var books: [Book] = []
let booksSlotOne = Book(rate: 1000, booksName: ["harrypotter", "jungleBook"])
books.append(booksSlotOne)
let booksSlotTwo = Book(rate: 800, booksName: ["theLionKing", "jungleBook2"])
books.append(booksSlotTwo)

let filtered = books.filter{ $0.rate > 800}
print(filtered) // [SwiftPlayground.Book(rate: 1000, booksName: ["harrypotter", "jungleBook"])]

filtered.forEach{print($0)} 
//Book(rate: 1000, booksName: ["harrypotter", "jungleBook"])


//reduce
let number = [1,2,3]
let product = number.reduce(1, *)
print(product) // 6
