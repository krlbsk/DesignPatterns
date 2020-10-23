import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(label)
        return view
    }()
    
    private lazy var button: UIButton = {
        let button = viewFactory.createButton()
        button.setTitle("Tap here", for: .normal)
        return button
    }()
    
    private lazy var label: UILabel = {
        let label = viewFactory.createLabel()
        label.text = "Hello World!"
        label.textAlignment = .center
        return label
    }()
    
    private let viewFactory = StandardViewFactory()
    
    override func loadView() {
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        label.frame = CGRect(x: 100, y: 250, width: 200, height: 20)
        self.view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
