//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by GaneshKumar Gunju on 01/06/18.
//  Copyright © 2018 vaayooInc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var tailingC: NSLayoutConstraint!
    @IBOutlet weak var modView: UIView!
    
    
    
    var barButtonTappedIsVisible = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func barButtonTapped(_ sender: Any) {
        if !barButtonTappedIsVisible {
            leadingC.constant = 150
            tailingC.constant = -150
            
            barButtonTappedIsVisible = true
        }
        else{
            leadingC.constant = 0
            tailingC.constant = 0
            
            barButtonTappedIsVisible = false
        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options:.curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationCompleted) in
            print("The animation is completed")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

