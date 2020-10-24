public class ProductsCache {
    private(set) var products = [Product]()
    
    public init() { }
    
    public func add(products: [Product]) {
        self.products = products
    }
}
