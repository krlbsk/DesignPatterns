import Foundation

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
