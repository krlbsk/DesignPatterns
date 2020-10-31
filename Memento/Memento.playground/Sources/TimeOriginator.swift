import Foundation

public class TimeOriginator {
    private var state: Time
    
    public init(state: Time) {
        self.state = state
    }
    
    public func freezeCurrentTime() {
        state = Time(date: Date())
    }
    
    public func setMemento(_ memento: TimeMemento) {
        state = memento.state
    }
    
    public func createMemento() -> TimeMemento {
        TimeMemento(state: state)
    }
}
