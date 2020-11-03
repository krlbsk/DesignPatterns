import UIKit

public class DataMediator {
    private let label: UILabel
    private let downloader: DataDownloader
    
    public init(
        label: UILabel,
        downloader: DataDownloader
    ) {
        self.label = label
        self.downloader = downloader
    }
    
    public func download() {
        downloader.download { [weak self] (result) in
            self?.label.text = try? result.get()
        }
    }
}
