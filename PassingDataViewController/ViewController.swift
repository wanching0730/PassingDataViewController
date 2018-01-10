//
//  ViewController.swift
//  PassingDataViewController
//
//  Created by Wan Ching on 10/01/2018.
//  Copyright © 2018 Wan Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func forwardBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForward", sender: self)
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = dataTextField.text!
            
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        nameLabel.text = data
    }
    
}

