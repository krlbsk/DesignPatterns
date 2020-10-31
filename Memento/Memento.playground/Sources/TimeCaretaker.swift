public class TimeCaretaker {
    private var mementos = [TimeMemento]()
    private let originator: TimeOriginator
    
    public init(originator: TimeOriginator) {
        self.originator = originator
    }
    
    public func save() {
        mementos.append(originator.createMemento())
    }
    
    public func moveBack() {
        guard !mementos.isEmpty else { return }
        let lastMemento = mementos.removeLast()
        originator.setMemento(lastMemento)
    }
    
    public func showTimeline() {
        mementos.forEach { memento in
            print(memento.time)
        }
    }
}
