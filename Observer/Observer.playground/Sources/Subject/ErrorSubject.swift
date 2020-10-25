public protocol ErrorSubject {
    func attach(observer: ErrorObserver)
    func detach(observer: ErrorObserver)
    func notify()
}
