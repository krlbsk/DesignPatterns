let cityProvider = CityProviderCached(
    cityProvider: CityProviderImpl()
)

cityProvider.getCities { (result) in
    switch result {
    case let .success(cities):
        print("Download #1: \(cities)")
    case .failure:
        print("Error while downloading cities")
    }
}

cityProvider.getCities { (result) in
    switch result {
    case let .success(cities):
        print("Download #2: \(cities)")
    case .failure:
        print("Error while downloading cities")
    }
}
