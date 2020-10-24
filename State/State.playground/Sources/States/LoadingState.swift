public class LoadingState: ViewState {
    
    private weak var context: ViewContext?
    
    public init(context: ViewContext?) {
        self.context = context
    }
    
    public func startLoading() {
        print("Showing loader...")
    }
    
    public func stopLoading() {
        print("...Hiding loader")
        context?.changeState(
            NormalState(context: context)
        )
        context?.stopLoading()
    }
}
