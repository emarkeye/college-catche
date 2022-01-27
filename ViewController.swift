//
//  ViewController.swift
//  College App (page based)
//
//  Created by Eric Markey on 6/20/19.
//  Copyright © 2019 Eric Markey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var infoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startBtn.layer.cornerRadius = 8
        infoBtn.layer.cornerRadius = 8
    }

    @IBAction func segueFromFirst(_ sender: UIButton)
    {
        performSegue(withIdentifier: "openToFirst", sender: nil)
    }
    
    
    @IBAction func compareBTN(_ sender: UIButton)
    {
        performSegue(withIdentifier: "firstCompare", sender: nil)
    }
}
