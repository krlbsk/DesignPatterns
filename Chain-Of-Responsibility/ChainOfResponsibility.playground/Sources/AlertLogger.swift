public class AlertLogger: Logger {
    private var next: Logger?
    
    public init() { }
    
    public func setNext(logger: Logger) -> Logger? {
        next = logger
        return next
    }
    
    public func handle(log: Log) {
        if log.level == .alert {
            print("Show an alert: \(log.message)")
        } else {
            next?.handle(log: log)
        }
    }
}
