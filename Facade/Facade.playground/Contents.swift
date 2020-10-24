let productsService = ProductService()
productsService.getProducts { result in
    switch result {
    case let .success(products):
        print("Downloaded products = \(products)")
    case let .failure(error):
        print("Error occured = \(error)")
    }
}
