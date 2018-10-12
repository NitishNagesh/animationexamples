//
//  ViewController.swift
//  animationexamples
//
//  Created by nitish nayak n on 11/10/18.
//  Copyright © 2018 nitish nayak n. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITextFieldDelegate{
   
    @IBOutlet weak var helloworld: UILabel!

    @IBOutlet weak var secondlabel: UILabel!
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    @IBOutlet weak var pass: shakingcontroller!
    override func viewDidLoad() {
        super.viewDidLoad()
        pass.delegate = self
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        pass.shake()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        helloworld.center.y -= view.bounds.height
        secondlabel.center.y += view.bounds.height
        hiddenLabel.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1.0, animations: {
            self.helloworld.center.y += self.view.bounds.height
        }, completion:nil)
        UIView.animate(withDuration: 0.5, delay: 2.0, options: [ ], animations: {
            self.view.backgroundColor = UIColor.blue
        }, completion: nil)
        secondanimation()
     changeBackground()
     UIView.animate(withDuration: 3.0, delay: 3.0, options: [] , animations:
        {
            
    self.hiddenLabel.alpha = 1.0 }, completion: nil)
    }
    func changeBackground(){
        UIView.animate(withDuration: 2.5,delay:3.0,options:[], animations: {
            self.view.backgroundColor = UIColor.black
            
        }, completion: nil)
        
        
        
    }
    func secondanimation(){
        UIView.animate(withDuration: 2.0, animations: {
            self.secondlabel.center.y -= self.view.bounds.height
        }, completion:nil)
        UIView.animate(withDuration: 3.0, delay: 1.0, options: [ ], animations: {
            self.view.backgroundColor = UIColor.gray
        }, completion: nil)
        
    }


}

