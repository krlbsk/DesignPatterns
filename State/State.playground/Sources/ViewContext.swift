public class ViewContext {
    
    private lazy var state: ViewState = NormalState(context: self)
    
    public init() { }
    
    public func changeState(_ state: ViewState) {
        self.state = state
    }
    
    public func startLoading() {
        state.startLoading()
    }
    
    public func stopLoading() {
        state.stopLoading()
    }
}
