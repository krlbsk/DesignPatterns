public protocol Logger {
    @discardableResult
    func setNext(logger: Logger) -> Logger?
    
    func handle(log: Log)
}
