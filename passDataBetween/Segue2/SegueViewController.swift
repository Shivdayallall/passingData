//
//  SegueViewController.swift
//  passDataBetween
//
//  Created by shiv on 2/8/21.
//

import UIKit

// this vc is being call dynamicly without a storyboard, so the objects also have to be created dynamically. and be initilized

class SegueViewController: UIViewController {
    
    // each section in the tb cell
    private var selectedItem: String
    
    // items which relates to the section that was tap
    private var relatedItem: [String]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = selectedItem.uppercased()
        view.backgroundColor = .brown
        
        // create the label programmatically
        let label = UILabel(frame: view.bounds)
        view.addSubview(label)
        
        // loop through the item for each section and append it the the label
        for item in relatedItem {
            label.text = (label.text ?? "") + "  "  + item
        }
    }
    
    // initial the items in the cell
    init(selectedItem: String, relatedItem: [String]) {
        self.selectedItem = selectedItem
        self.relatedItem = relatedItem
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
