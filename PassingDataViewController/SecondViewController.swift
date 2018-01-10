//
//  SecondViewController.swift
//  PassingDataViewController
//
//  Created by Wan Ching on 10/01/2018.
//  Copyright © 2018 Wan Ching. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data : String)
}

class SecondViewController: UIViewController {

    
    @IBOutlet weak var name1Label: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var data1TextField: UITextField!
    
    var data = ""
    var delegate : CanReceive?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name1Label.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        delegate?.dataReceived(data: data1TextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    

    

}
