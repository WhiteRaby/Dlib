//
//  ViewController.swift
//  NewDlib
//
//  Created by Alexandr on 08.07.16.
//  Copyright © 2016 Alexandr. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let sessionHandler = SessionHandler()
    
    @IBOutlet weak var preview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        sessionHandler.openSession()
        
        
        let layer = sessionHandler.layer
        layer.frame = preview.bounds
        
        preview.layer.addSublayer(layer)
        
        view.layoutIfNeeded()
        
    }
    
}

