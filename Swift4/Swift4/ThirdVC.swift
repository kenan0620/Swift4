
//
//  ThirdVC.swift
//  Swift4
//
//  Created by Conan on 2017/11/30.
//  Copyright © 2017年 Conan. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController ,UIWebViewDelegate{

    @IBOutlet weak var basisWebView: UIWebView!
    @IBOutlet weak var basisMBView: UIView!
    @IBOutlet weak var basisActivityIndicatorView: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.basisMBView.isHidden = true
        //加载网页
        self.basisWebView.loadRequest(NSURLRequest(url:NSURL.init(string:"http://www.baidu.com")! as URL) as URLRequest)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        self.basisMBView.isHidden = false
        self.basisActivityIndicatorView.startAnimating()
        print("webView DidStartLoad")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.basisActivityIndicatorView.stopAnimating()
        self.basisMBView.isHidden = true
        print("webView DidFinishLoad")
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        self.basisActivityIndicatorView.stopAnimating()
        self.basisMBView.isHidden = true
        print("didFailLoad WithError" + error.localizedDescription)
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
