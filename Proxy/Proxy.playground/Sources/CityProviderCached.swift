/// Proxy
public class CityProviderCached: CityProvider {
    
    private let cityProvider: CityProvider
    private var cities = [City]()
    
    public init(cityProvider: CityProvider) {
        self.cityProvider = cityProvider
    }
    
    public func getCities(completion: @escaping (Result<[City], Error>) -> Void) {
        guard cities.isEmpty else {
            print("Returning from cache")
            completion(.success(cities))
            return
        }
        print("Downloading from server")
        cityProvider.getCities { [weak self] (result) in
            switch result {
            case let .success(cities):
                self?.cities = cities
                completion(.success(cities))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
