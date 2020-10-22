import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(errorLabel)
        return view
    }()
    
    private lazy var errorLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 120, y: 200, width: 200, height: 50)
        label.attributedText = errorTextBuilderDirector.construct()
        return label
    }()
    
    private let errorTextBuilderDirector = ErrorTextBuilderDirector(
        builder: AttributedStringBuilderImpl(text: "Error occurred!")
    )
    
    override func loadView() {
        self.view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
