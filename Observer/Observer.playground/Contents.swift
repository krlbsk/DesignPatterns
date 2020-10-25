import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(label)
        return view
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        return label
    }()
    
    override func loadView() {
        view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
