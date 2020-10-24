public class ProductsCache {
    public static let shared = ProductsCache()
    
    public private(set) var products = [Product]()
    
    private init() { }
    
    public func addProducts(_ products: [Product]) {
        self.products = products
    }
}
