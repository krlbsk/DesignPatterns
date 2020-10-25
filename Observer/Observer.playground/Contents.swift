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
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        button.setTitle("Send data", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(
            self,
            action: #selector(sendData),
            for: .touchUpInside
        )
        return button
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 250, width: 200, height: 20)
        label.text = "..."
        label.textColor = .black
        return label
    }()
    
    private lazy var api = API(errorSubject: errorSubject)
    
    private lazy var errorSubject: ErrorSubject = {
        let subject = ErrorSubjectImpl()
        subject.attach(observer: button)
        subject.attach(observer: label)
        return subject
    }()
    
    @objc private func sendData() {
        api.sendData()
    }
    
    override func loadView() {
        view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
