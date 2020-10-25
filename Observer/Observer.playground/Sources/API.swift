public class API {
    private let errorSubject: ErrorSubject
    
    public init(errorSubject: ErrorSubject) {
        self.errorSubject = errorSubject
    }
    
    public func sendData() {
        // Mock error response
        errorSubject.notify()
    }
}
