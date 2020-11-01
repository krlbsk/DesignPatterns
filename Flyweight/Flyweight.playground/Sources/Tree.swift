/// Flyweight
public struct Tree {
    private let intrinsicState: String
    
    public init(intrinsicState: String) {
        self.intrinsicState = intrinsicState
    }
    
    public func photosynthesize(extrinsicState: String) {
        print("Photosynthesize \(intrinsicState), \(extrinsicState)")
    }
}
