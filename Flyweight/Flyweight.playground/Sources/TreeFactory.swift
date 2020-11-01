/// Flyweight factory
public class TreeFactory {
    private let intrinsicState: String
    public private(set) var trees = [String: Tree]()
    
    public init(intrinsicState: String) {
        self.intrinsicState = intrinsicState
    }
    
    public func getTree(key: String) -> Tree {
        if let tree = trees[key] {
            return tree
        } else {
            let newTree = Tree(intrinsicState: intrinsicState)
            trees[key] = newTree
            return newTree
        }
    }
}
