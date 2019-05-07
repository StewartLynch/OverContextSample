//
//  PresentedViewController.swift
//  OverContextSample
//
//  Created by Stewart Lynch on 2019-05-07.
//  Copyright © 2019 Stewart Lynch. All rights reserved.
//

import UIKit

protocol PresentedViewControllerDelegate: AnyObject {
    func processString(myString:String)
}

class PresentedViewController: UIViewController {
    weak var delegate:PresentedViewControllerDelegate?
    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func returnTapped(_ sender: Any) {
        if let delegate = delegate {
            delegate.processString(myString: myTextField.text!)
            dismiss(animated: true)
        }
    }
    
}
