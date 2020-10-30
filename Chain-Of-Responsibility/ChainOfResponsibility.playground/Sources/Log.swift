public struct Log {
    public let message: String
    public let level: Level
    
    public init(
        message: String,
        level: Level
    ) {
        self.message = message
        self.level = level
    }
    
    public enum Level {
        case console
        case file
        case alert
    }
}
