import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(authButton)
        view.addSubview(authSwitchLabel)
        view.addSubview(authSwitch)
        return view
    }()
    
    private lazy var authButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(
            self,
            action: #selector(authTapped),
            for: .touchUpInside
        )
        return button
    }()
    
    private lazy var authSwitchLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 250, width: 200, height: 20)
        label.text = "Don't have an account?"
        label.textColor = .black
        return label
    }()
    
    private lazy var authSwitch: UISwitch = {
        let view = UISwitch()
        view.frame = CGRect(x: 250, y: 250, width: 200, height: 20)
        view.addTarget(
            self,
            action: #selector(authChanged(authSwitch:)),
            for: .valueChanged
        )
        return view
    }()
    
    private var authCommand: AuthCommand = LoginCommand()
    
    override func loadView() {
        self.view = contentView
    }
    
    @objc private func authTapped() {
        authCommand.auth()
    }
    
    @objc private func authChanged(authSwitch: UISwitch) {
        authCommand = authSwitch.isOn
            ? RegisterCommand()
            : LoginCommand()
        
        let authButtonTitle = authSwitch.isOn
            ? "Register"
            : "Log in"
        authButton.setTitle(
            authButtonTitle,
            for: .normal
        )
    }
}

PlaygroundPage.current.liveView = MyViewController()
