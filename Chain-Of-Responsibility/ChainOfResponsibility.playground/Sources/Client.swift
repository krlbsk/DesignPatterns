public class Client {
    
    public init() { }
    
    public func handle(chain: Logger, logs: [Log]) {
        logs.forEach {
            chain.handle(log: $0)
        }
    }
}
