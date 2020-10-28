public extension Array {
    var iterator: ListIterator<Element> {
        ListIterator(list: self)
    }
}
