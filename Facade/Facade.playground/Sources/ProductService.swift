public class ProductService {
    
    private let api = ProductAPI()
    private let cache = ProductsCache()
    
    public init() { }
    
    public func getProducts(completion: (Result<[Product], Error>) -> Void) {
        let cachedProducts = cache.products
        guard cachedProducts.isEmpty else {
            completion(.success(cachedProducts))
            return
        }
        
        api.retrieveProducts { [weak self] result in
            if let products = try? result.get() {
                self?.cache.add(products: products)
            }
            completion(result)
        }
    }
}
