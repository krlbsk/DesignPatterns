import Foundation

let server = Server()
let serverAdapter = ServerAdapter(server: server)

serverAdapter.getContent(
    ofURL: URL(string: "https://github.com")!
) { result in
    switch result {
    case let .success(content):
        print("Content: \(content)")
    case let .failure(error):
        print("Error: \(error)")
    }
}
