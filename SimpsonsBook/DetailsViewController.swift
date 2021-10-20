//
//  DetailsViewController.swift
//  SimpsonsBook
//
//  Created by Ceren Çapar on 26.09.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var jobTextLabel: UILabel!
    var selectedSimpson : Simpsons?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameTextLabel.text = selectedSimpson?.name
        jobTextLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
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

