public class NormalState: ViewState {
    private weak var context: ViewContext?
    
    public init(context: ViewContext?) {
        self.context = context
    }
    
    public func startLoading() {
        print("Loading started...")
        context?.changeState(
            LoadingState(context: context)
        )
        context?.startLoading()
    }
    
    public func stopLoading() {
        print("...Loading stopped")
    }
}
