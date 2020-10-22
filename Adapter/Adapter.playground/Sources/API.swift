import Foundation

/// Target
public protocol API {
    func getContent(
        ofURL url: URL,
        completion: (Result<String, APIError>) -> Void
    )
}
