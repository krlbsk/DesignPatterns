public class CityProviderImpl: CityProvider {
    
    public init() { }
    
    public func getCities(completion: @escaping (Result<[City], Error>) -> Void) {
        completion(.success([
            City(name: "Warsaw"),
            City(name: "New York"),
            City(name: "Tokio")
        ]))
    }
}
