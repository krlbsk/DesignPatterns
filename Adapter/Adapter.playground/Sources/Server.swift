import Foundation

/// Adaptee
public class Server {
    
    public init() { }
    
    public func getRequest(
        scheme: String,
        host: String,
        path: String,
        completion: (Data?, Error?) -> Void
    ) {
        completion(
            "This is a request content".data(using: .utf8),
            nil
        )
    }
}
