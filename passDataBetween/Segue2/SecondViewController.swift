//
//  SecondViewController.swift
//  passDataBetween
//
//  Created by shiv on 2/8/21.
//

import UIKit


//MARK: - INIT NEW VC WHEN A CELL IN A TABLEVIEW IS TAP. VC IS BEING PUSH WHEN USER TAP ON CELL
class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    private let data = [
        ["guyana", "Italy", "America", "England", "Spain"],
        ["red", "blue", "green", "pink", "orange", "yellow"],
        ["kirin", "fireball", "chidori", "beastbomb"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    // Asks the data source to return the number of sections in the table view. return all the section[items] in the array. so sections are the amount of category the tv have. Ex, we have different category of muscle groups,Back, Arm, Chest...
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    // returns the number of items per category, so  we have different category of muscle groups,Back, Arm, Chest and each group contains an item, which is the excerisce for the group lats pull down, bench press, curls
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // cell.textLabel?.text = "billy \(indexPath.row+1)" // get current indexpath and add one to it, cuz we start at 0
        
        // take each section and the current item at that section and add it to the label
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        return cell
    }
    
    /* when the cell is tap on the table view the secondVC is segued to and passing the related item to the vc.
     */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        
        // save each section in  this variable
        let item = data[indexPath.section]
        
        let vc = SegueViewController(selectedItem: item[indexPath.row], relatedItem: item)
        navigationController?.pushViewController(vc, animated: true)
    }

}
