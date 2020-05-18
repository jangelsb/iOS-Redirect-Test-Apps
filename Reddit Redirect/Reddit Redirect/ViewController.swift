//
//  ViewController.swift
//  Reddit Redirect
//
//  Created by Josh Angelsberg on 5/17/20.
//  Copyright © 2020 jangelsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel?

    var text: String? {
        didSet {
            updateLabel(using: text)
        }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateLabel(using: text)
    }
    
    func updateLabel(using text: String?) {
        if let text = text {
            label?.text = "Navigate to: \(text)"
        }
    }
}
