import UIKit

public class LoadingState: ViewState {
    
    private weak var context: ViewContext?
    private var loader: UIActivityIndicatorView?
    
    public init(
        context: ViewContext?,
        loader: UIActivityIndicatorView?
    ) {
        self.context = context
        self.loader = loader
    }
    
    public func startLoading() {
        loader?.startAnimating()
    }
    
    public func stopLoading() {
        context?.changeState(
            NormalState(context: context, loader: loader)
        )
        context?.stopLoading()
    }
}
