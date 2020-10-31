import Foundation

public struct TimeMemento {
    public var state: TimeState
    public var time: String
    
    private let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter
    }()
    
    public init(state: TimeState) {
        self.state = state
        time = formatter.string(from: state.date)
    }
}
