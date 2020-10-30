public class ConsoleLogger: Logger {
    private var next: Logger?
    
    public init() { }
    
    public func setNext(logger: Logger) -> Logger? {
        next = logger
        return next
    }
    
    public func handle(log: Log) {
        if log.level == .console {
            print("Display on the console: \(log.message)")
        } else {
            next?.handle(log: log)
        }
    }
}
