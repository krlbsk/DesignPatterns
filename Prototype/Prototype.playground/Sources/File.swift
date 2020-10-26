import Foundation

public class File: NSCopying {
    public let name: String
    public let content: String
    
    public init(
        name: String,
        content: String
    ) {
        self.name = name
        self.content = content
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
        File(name: "Copy of \(name)", content: content)
    }
}
