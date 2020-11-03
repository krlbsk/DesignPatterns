import UIKit
import PlaygroundSupport
    
class MyViewController: UIViewController {
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)
        return view
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "No data"
        label.textColor = .black
        return label
    }()
    
    private var button: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 250, width: 200, height: 20)
        button.setTitle("Sync", for: .normal)
        button.addTarget(self, action: #selector(download), for: .touchUpInside)
        return button
    }()
    
    private lazy var dataMediator = DataMediator(
        label: label,
        downloader: DataDownloaderImpl()
    )
    
    override func loadView() {
        view = contentView
    }
    
    @objc private func download() {
        dataMediator.download()
    }
}

PlaygroundPage.current.liveView = MyViewController()
