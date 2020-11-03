public class DataDownloaderImpl: DataDownloader {
    public init() { }
    
    public func download(completion: @escaping (Result<String, Error>) -> Void) {
        completion(.success("Downloaded data"))
    }
}
