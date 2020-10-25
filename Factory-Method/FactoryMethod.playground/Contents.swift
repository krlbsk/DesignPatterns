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
        let label = labelCreator.createAndSetup()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        return label
    }()
    
    private let labelCreator: LabelCreator = PremiumLabelCreator()
    
    override func loadView() {
        self.view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
