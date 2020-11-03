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
            switch result {
            case let .success(data):
                self?.label.text = data
            case .failure:
                break
            }
        }
    }
}
