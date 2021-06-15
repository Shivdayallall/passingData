//
//  DetailVC.swift
//  passDataBetween
//
//  Created by shiv on 6/13/21.
//

import UIKit

class DetailVC: UIViewController {
        
    @IBOutlet weak var detailTableView: UITableView!
    
    var color = ""
    var zord = ""
    var rangerData: [String] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
    }

}

extension DetailVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        detailTableView.deselectRow(at: indexPath, animated: true)
    }
}

extension DetailVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        rangerData = [color, zord]
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = detailTableView.dequeueReusableCell(withIdentifier: "detailId", for: indexPath)
        
        cell.textLabel?.text = color
        cell.detailTextLabel?.text = zord
            
        return cell
    }
    
    
}
