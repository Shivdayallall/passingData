//
//  SecondVC.swift
//  passDataBetween
//
//  Created by shiv on 2/8/21.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    var data: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        outputLabel.text = "Hey!, What's up? " + data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
