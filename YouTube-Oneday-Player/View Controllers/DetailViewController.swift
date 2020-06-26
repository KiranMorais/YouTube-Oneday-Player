//
//  DetailViewController.swift
//  YouTube-Oneday-Player
//
//  Created by Kiran Morais on 27/06/20.
//  Copyright © 2020 Heartinz. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleView: UILabel!
    
    
    @IBOutlet weak var dateView: UILabel!
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    var video:Video?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        titleView.text = ""
        dateView.text = ""
        textView.text = ""
        
        
        
        
        guard video != nil else {
            return
        }
        
        let embedUrlString = Constants.YT_EMBED_URL + video!.videoId
        
        let url = URL(string: embedUrlString)
        
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        
        titleView.text = video!.title
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        
        dateView.text = df.string(from: video!.published)
        
        textView.text = video!.description
        
        
    }
    

  

}
