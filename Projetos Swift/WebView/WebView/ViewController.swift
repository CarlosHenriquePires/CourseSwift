//
//  ViewController.swift
//  WebView
//
//  Created by Aloc SP11704 on 28/03/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    lazy var webView: WKWebView = {
        let webConfiguration = WKWebViewConfiguration()
        let web = WKWebView(frame: .zero,configuration: webConfiguration)
        web.navigationDelegate = self
        web.translatesAutoresizingMaskIntoConstraints = false
        return web
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
        title = "WebView"
        
        configureUI()
        setupWebView()
    }

    
    private func setupWebView(){
        let url = URL(string: "http://www.apple.com")
        let requestURL = URLRequest(url: url!)
        webView.load(requestURL)
    }
    
    private func configureUI(){
        view.addSubview(webView)
        
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            webView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    private func setupNavBar(){
        let forward = UIBarButtonItem(image: UIImage.init(systemName: "arrow.right"), style: .plain, target: self, action: #selector(forwardAction))
        
        let back = UIBarButtonItem(image: UIImage.init(systemName: "arrow.backward"), style: .plain, target: self, action: #selector(backAction))
        
        let reload = UIBarButtonItem(image: UIImage(systemName: "arrow.counterclockwise"), style: .plain, target: self, action: #selector(reloadAction))
        
        
        navigationItem.leftBarButtonItem = reload
        navigationItem.rightBarButtonItems = [forward,back]
        
    }
    
    


}

extension ViewController {
    
    @objc private func forwardAction(){
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    @objc private func backAction(){
        if webView.canGoBack{
            webView.goBack()
        }
        
    }
    @objc private func reloadAction(){
        webView.reload()
        
    }
}

extension ViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("Iniciando...")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Terminou!!!")
    }
    
}

