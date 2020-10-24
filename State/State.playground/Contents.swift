import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.addSubview(startLoadingButton)
        view.addSubview(stopLoadingButton)
        view.addSubview(loader)
        return view
    }()
    
    private lazy var startLoadingButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(
            self,
            action: #selector(loadData),
            for: .touchUpInside
        )
        return button
    }()
    
    private lazy var stopLoadingButton: UIButton = {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 250, width: 200, height: 20)
        button.setTitle("Stop", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(
            self,
            action: #selector(cancel),
            for: .touchUpInside
        )
        return button
    }()
    
    private let loader: UIActivityIndicatorView = {
        let loader = UIActivityIndicatorView(style: .medium)
        loader.frame = CGRect(x: 150, y: 300, width: 50, height: 50)
        loader.color = .blue
        loader.hidesWhenStopped = true
        return loader
    }()
    
    private lazy var viewContext = ViewContext(loader: loader)
    
    @objc private func loadData() {
        print("Send request")
        viewContext.startLoading()
    }
    
    @objc private func cancel() {
        print("Cancel request")
        viewContext.stopLoading()
    }
    
    override func loadView() {
        self.view = contentView
    }
}

PlaygroundPage.current.liveView = MyViewController()
