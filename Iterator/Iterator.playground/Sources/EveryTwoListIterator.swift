public class EveryTwoListIterator<Type> {
    
    private let list: [Type]
    
    private var currentIndex = 0
    
    public init(list: [Type]) {
        self.list = list
    }
    
    public func next() -> Type? {
        defer { currentIndex += 2 }
        return currentIndex < list.count
            ? list[currentIndex]
            : nil
    }
    
    public func isDone() -> Bool {
        currentIndex == list.count
    }
}
