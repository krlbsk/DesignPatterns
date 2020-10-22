import Foundation

/// Adaptee
class Server {
    func getRequest(
        scheme: String,
        host: String,
        path: String,
        completion: (Data?, Error?) -> Void
    ) {
        completion(
            "This is a request content".data(using: .utf8),
            nil
        )
    }
}

/// Target
protocol API {
    func getContent(
        ofURL url: URL,
        completion: (Result<String, APIError>) -> Void
    )
}

/// Adapter
class ServerAdapter: API {
    
    private let server: Server
    
    init(server: Server) {
        self.server = server
    }
    
    func getContent(
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

enum APIError: Error {
    case generic(Error)
    case invalidURL
    case invalidContent
    case unknown
}

// Client
let server = Server()
let serverAdapter = ServerAdapter(server: server)

serverAdapter.getContent(
    ofURL: URL(string: "https://github.com")!
) { result in
    switch result {
    case let .success(content):
        print("Retrieved content = \(content)")
    case let .failure(error):
        print("Error while retrieving content = \(error)")
    }
}
