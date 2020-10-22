import Foundation

public enum APIError: Error {
    case generic(Error)
    case invalidURL
    case invalidContent
    case unknown
}
