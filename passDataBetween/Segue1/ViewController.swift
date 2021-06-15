//
//  ViewController.swift
//  passDataBetween
//
//  Created by shiv on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterLabel: UITextField!
    var input: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // ***REMEMBER WHEN CREATING THE SEGUE CONNECT IT FROM THE INTIAL VIEW TO THE SECOND VIEW, NOT FROM THE BUTTON OR OBJECT, IF SO IT WILL CAUSE THE VIEW TO LOAD TWICE***
    @IBAction func pressBTN(_ sender: UIButton) {
        input = enterLabel.text!
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondVC
        vc.data = self.input
        
    }
    
}

