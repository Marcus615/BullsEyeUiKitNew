//
//  AboutViewController.swift
//  BullsEyeUiKit
//
//  Created by marcus stephens on 5/20/22.
//
// this is a test to see if I can commit

import UIKit
import WebKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
                let request = URLRequest(url: url)
                webView.load(request)
            }

        // Do any additional setup after loading the view.
    }
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var webView: WKWebView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
