//
//  ViewController.swift
//  WebViewSafari
//
//  Created by Aloc SP11704 on 28/03/22.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Call Safari", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(callSafari), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBlue
        configureButton()
    }
    
    private func configureButton(){
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 45),
            button.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2)
        
        ])
    }
    
    @objc private func callSafari(){
        if let url = URL(string: "https://www.apple.com"){
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            let viewController = SFSafariViewController(url: url, configuration: config)
            viewController.delegate = self
            viewController.preferredBarTintColor = .black
            viewController.preferredControlTintColor = .white
            viewController.dismissButtonStyle = .close
            present(viewController, animated: true)
        }
            
    }


}

extension ViewController: SFSafariViewControllerDelegate {
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true) {
            print("Fazer algo")
        }
        
    }
    
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print("didLoadSuccessfully \(didLoadSuccessfully)")
    }
    
    
}

