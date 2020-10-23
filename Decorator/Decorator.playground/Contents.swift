import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(button)
        return view
    }()
    
    private lazy var button: Button = {
        let button = UIButton(type: .system)
        button.setTitle("Tap here", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(
            self,
            action: #selector(tap),
            for: .touchUpInside
        )
        let decoratedButton = BorderDecorator(
            button: BackgroundColorDecorator(
                button: button,
                color: UIColor.purple.withAlphaComponent(0.3)
            ),
            borderWidth: 2,
            borderColor: .red
        )
        decoratedButton.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        return decoratedButton
    }()
    
    override func loadView() {
        self.view = contentView
    }
    
    @objc func tap() {
        button.tap()
    }
}

PlaygroundPage.current.liveView = MyViewController()
