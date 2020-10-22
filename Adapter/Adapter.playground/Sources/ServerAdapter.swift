import Foundation

/// Adapter
public class ServerAdapter: API {
    
    private let server: Server
    
    public init(server: Server) {
        self.server = server
    }
    
    public func getContent(
        ofURL url: URL,
        completion: (Result<String, APIError>) -> Void
    ) {
        guard
            let scheme = url.scheme,
            let host = url.host
        else {
            completion(.failure(.invalidURL))
            return
        }
        server.getRequest(
            scheme: scheme,
            host: host,
            path: url.path
        ) { (data, error) in
            let result: Result<String, APIError>
            if let data = data {
                if let content = String(data: data, encoding: .utf8) {
                    result = .success(content)
                } else {
                    result = .failure(.invalidContent)
                }
            } else if let error = error {
                result = .failure(.generic(error))
            } else {
                result = .failure(.unknown)
            }
            completion(result)
        }
    }
}
