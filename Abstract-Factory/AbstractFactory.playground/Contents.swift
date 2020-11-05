import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(standardViews)
        view.addSubview(premiumViews)
        return view
    }()
    
    private lazy var standardViews: UIStackView = {
        let viewFactory = StandardViewFactory()
        
        let button = makeButton(viewFactory: viewFactory, title: "Standard button")
        let label = makeLabel(viewFactory: viewFactory, text: "Standard label")
        
        let stackView = UIStackView(arrangedSubviews: [
            button,
            label
        ])
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    private lazy var premiumViews: UIStackView = {
        let viewFactory = PremiumViewFactory()
        
        let button = makeButton(viewFactory: viewFactory, title: "Premium button")
        let label = makeLabel(viewFactory: viewFactory, text: "Premium label")
        
        let stackView = UIStackView(arrangedSubviews: [
            button,
            label
        ])
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    private func makeLabel(
        viewFactory: ViewFactory,
        text: String
    ) -> UILabel {
        let label = viewFactory.createLabel()
        label.text = text
        label.textAlignment = .center
        return label
    }
    
    private func makeButton(
        viewFactory: ViewFactory,
        title: String
    ) -> UIButton {
        let button = viewFactory.createButton()
        button.setTitle(title, for: .normal)
        return button
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutStandardViews()
        layoutPremiumViews()
    }
    
    private func layoutStandardViews() {
        standardViews.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            standardViews.topAnchor.constraint(equalTo: view.topAnchor, constant: 24),
            standardViews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            standardViews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
    
    private func layoutPremiumViews() {
        premiumViews.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            premiumViews.topAnchor.constraint(equalTo: standardViews.bottomAnchor, constant: 24),
            premiumViews.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            premiumViews.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }
}

PlaygroundPage.current.liveView = MyViewController()
