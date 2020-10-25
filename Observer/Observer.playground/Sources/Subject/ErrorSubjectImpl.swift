public class ErrorSubjectImpl: ErrorSubject {
    private var observers = [ErrorObserver]()
    
    public init() { }
    
    public func attach(observer: ErrorObserver) {
        observers.append(observer)
    }
    
    public func detach(observer: ErrorObserver) {
        guard let index = observers.firstIndex(where: { $0 === observer })
        else { return }
        observers.remove(at: index)
    }
    
    public func notify() {
        observers.forEach { $0.markAsError() }
    }
}
