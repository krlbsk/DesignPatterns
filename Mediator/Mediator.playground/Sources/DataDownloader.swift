public protocol DataDownloader {
    func download(completion: @escaping (Result<String, Error>) -> Void)
}
