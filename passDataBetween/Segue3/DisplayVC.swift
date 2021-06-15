//
//  DisplayVC.swift
//  passDataBetween
//
//  Created by shiv on 6/13/21.
//

/**
    Passing data forward using storyboard segue requries you to use the prepareforsegue method to pass the data. Data can also be pass forwad using the navigation and pushing the new vc on the stack, which is being done programaticlly.
*/

import UIKit

class DisplayVC: UIViewController {
    
    @IBOutlet weak var table_View: UITableView!
    
    var rangerArray = [
        PowerRangerData(name: "Jason", rangerColor: "Gold ranger", zord: "Pyramidas Zord"),
        PowerRangerData(name: "Tommy", rangerColor: "Green ranger", zord: "Dragon Zord"),
        PowerRangerData(name: "Nick", rangerColor: "Red ranger", zord: "Phoenix Zord"),
        PowerRangerData(name: "Kira", rangerColor: "Yellow ranger", zord: "Pteranodon Zord"),
        PowerRangerData(name: "Jen", rangerColor: "Pink ranger", zord: "Time flyer 5"),
        PowerRangerData(name: "Sky", rangerColor: "Blue ranger", zord: "Delta Runner 2")
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table_View.dataSource = self
        table_View.delegate = self
    }
    
}

extension DisplayVC {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue" {
            
            // access the current cell and get all the data that there and save it to the index_path variable. You have to use this method when passing data forward from a table view cell
            if let index_path = self.table_View.indexPathForSelectedRow {
                
                let detailVC = segue.destination as! DetailVC
                
                detailVC.color = rangerArray[index_path.row].rangerColor
                
                detailVC.zord = rangerArray[index_path.row].zord
            }
            
        }

    }
    
}

    

extension DisplayVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailSegue", sender: self)
        table_View.deselectRow(at: indexPath, animated: true)
        
    }
    
}

extension DisplayVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rangerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table_View.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        cell.textLabel?.text = rangerArray[indexPath.row].name
        
        return cell
    }
    
    
}
