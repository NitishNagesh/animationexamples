//
//  ViewController.swift
//  animationexamples
//
//  Created by nitish nayak n on 11/10/18.
//  Copyright © 2018 nitish nayak n. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITextFieldDelegate{

    @IBOutlet weak var pass: shakingcontroller!
    override func viewDidLoad() {
        super.viewDidLoad()
        pass.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        pass.shake()
    }


}

