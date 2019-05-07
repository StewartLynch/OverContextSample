//
//  ViewController.swift
//  OverContextSample
//
//  Created by Stewart Lynch on 2019-05-07.
//  Copyright © 2019 Stewart Lynch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var returnedTextLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "modalSegue" {
            let vc = segue.destination as? PresentedViewController
            vc?.delegate = self
        }
    }

    @IBAction func presentScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "modalSegue", sender: nil)
    }
}

extension ViewController: PresentedViewControllerDelegate {
    func processString(myString: String) {
        returnedTextLabel.text = myString
    }
    
    
}
