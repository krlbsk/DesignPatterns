import Foundation

public struct TimeMemento {
    public var state: Time
    public var time: String
    
    private let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter
    }()
    
    public init(state: Time) {
        self.state = state
        time = formatter.string(from: state.date)
    }
}
