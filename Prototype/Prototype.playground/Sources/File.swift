import Foundation

public class File: NSCopying {
    public let name: String
    public let contents: String
    
    public init(
        name: String,
        contents: String
    ) {
        self.name = name
        self.contents = contents
    }
    
    public func copy(with zone: NSZone? = nil) -> Any {
        File(name: "Copy of \(name)", contents: contents)
    }
}
