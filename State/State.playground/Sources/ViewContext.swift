import UIKit

public class ViewContext {
    
    private let loader: UIActivityIndicatorView?
    private lazy var state: ViewState = NormalState(
        context: self,
        loader: loader
    )
    
    public init(loader: UIActivityIndicatorView?) {
        self.loader = loader
    }
    
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
