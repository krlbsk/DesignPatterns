public protocol CityProvider {
    func getCities(completion: @escaping (Result<[City], Error>) -> Void)
}
