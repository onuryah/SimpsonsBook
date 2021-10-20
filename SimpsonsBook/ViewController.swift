//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Ceren Çapar on 26.09.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var simpsonsName = [Simpsons]()
    var chosenSimpson : Simpsons?


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let bart = Simpsons(name2: "Bart Simpson", job2: "Nuclear Operator", image2: UIImage(named: "Bart")!)
        let homer = Simpsons(name2: "Homer Simpson", job2: "Developer", image2: UIImage(named: "Homer")!)
        let lisa = Simpsons(name2: "Lisa Simpson", job2: "Designer", image2: UIImage(named: "Lisa")!)
        let marge = Simpsons(name2: "Marge Simpson", job2: "HouseWife", image2: UIImage(named: "Marge")!)
        
        simpsonsName.append(bart)
        simpsonsName.append(homer)
        simpsonsName.append(lisa)
        simpsonsName.append(marge)

        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonsName.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonsName[indexPath.row].name 
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonsName[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
           let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
}

