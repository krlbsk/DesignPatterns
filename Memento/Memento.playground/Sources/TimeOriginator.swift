import Foundation

public class TimeOriginator {
    private var state: TimeState
    
    public init(state: TimeState) {
        self.state = state
    }
    
    public func freezeCurrentTime() {
        state = TimeState(date: Date())
    }
    
    public func setMemento(_ memento: TimeMemento) {
        state = memento.state
    }
    
    public func createMemento() -> TimeMemento {
        TimeMemento(state: state)
    }
}
