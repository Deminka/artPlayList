//
//  TrackList.swift
//  artPlayList
//
//  Created by mac on 10.05.2023.
//

import UIKit

class TrackList: UITableViewController {
    
    let imageNameArray = ["One Republic - Native",
                          "Maroon5 - Overexposed",
                          "Egor Crid - Serdceedka"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail"{
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! DetailVC
                detailVC.trackTitle = imageNameArray[indexPath.row]
            }
        }
    }
    

}
