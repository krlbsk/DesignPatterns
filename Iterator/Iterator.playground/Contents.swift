let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
let numbersIterator = numbers.everyTwoIterator

while !numbersIterator.isDone() {
    guard let number = numbersIterator.next() else { break }
    print(number)
}
