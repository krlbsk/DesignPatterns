import UIKit

public class NormalState: ViewState {
    
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
        context?.changeState(
            LoadingState(context: context, loader: loader)
        )
        context?.startLoading()
    }
    
    public func stopLoading() {
        loader?.stopAnimating()
    }
}
