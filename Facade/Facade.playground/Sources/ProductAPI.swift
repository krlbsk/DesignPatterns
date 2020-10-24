import Foundation

public class ProductAPI {
    public init() { }
    
    public func retrieveProducts(completion: (Result<[Product], Error>) -> Void) {
        completion(
            .success([
                Product(id: UUID(), name: "Table"),
                Product(id: UUID(), name: "Chair"),
                Product(id: UUID(), name: "Bookshelf")
            ])
        )
    }
}
