//
//  DetailsViewController.swift
//  TableViewAndDataTransfer
//
//  Created by Emre Keseroğlu on 5.04.2023.
//

import UIKit

class DetailsVC: UIViewController {
    var selectedLandmarkName = ""
    var selectedLandmarkimages = UIImage()

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var landmarkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = selectedLandmarkimages
        landmarkLabel.text = selectedLandmarkName
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
