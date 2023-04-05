//
//  ViewController.swift
//  TableViewAndDataTransfer
//
//  Created by Emre Keseroğlu on 5.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var landmarkImages = [UIImage] ()
    var landmarkNames = [String] ()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage ()

    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("Italy")
        landmarkNames.append("Turkey")
        landmarkNames.append("France")
        landmarkNames.append("England")
        
        landmarkImages.append(UIImage(named: "Italy.jpeg")!)
        landmarkImages.append(UIImage(named: "Turkey.jpeg")!)
        landmarkImages.append(UIImage(named: "France.jpeg")!)
        landmarkImages.append(UIImage(named: "England.jpeg")!)
    


    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]

        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkimages = chosenLandmarkImage

            
        }
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        self.landmarkNames.remove(at: indexPath.row)
        self.landmarkImages.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}

