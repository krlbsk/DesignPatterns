public extension Array {
    var iterator: ListIterator<Element> {
        ListIterator(list: self)
    }
    
    var everyTwoIterator: EveryTwoListIterator<Element> {
        EveryTwoListIterator(list: self)
    }
}
