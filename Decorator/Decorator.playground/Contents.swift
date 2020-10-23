import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(button)
        return view
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        button.setTitle("Hello World!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func loadView() {
        self.view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
