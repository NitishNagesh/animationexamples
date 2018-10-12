//
//  ViewController.swift
//  animationexamples
//
//  Created by nitish nayak n on 11/10/18.
//  Copyright © 2018 nitish nayak n. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITextFieldDelegate , CAAnimationDelegate{
   
    @IBOutlet weak var helloworld: UILabel!

    @IBOutlet weak var `continue`: UIButton!
    @IBOutlet weak var secondlabel: UILabel!
    
    @IBOutlet weak var hiddenLabel: UILabel!
      @IBOutlet var heightConstraint: NSLayoutConstraint!
    
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
        self.continue.alpha = 0.0
        
        helloworld.center.y -= view.bounds.height
    
        secondlabel.center.y += view.bounds.height
        hiddenLabel.alpha = 0.0
        pass.center.x -= view.bounds.width
    
    }
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.0,usingSpringWithDamping:0.2, initialSpringVelocity: 0.6,options: [ .curveEaseIn], animations: {
            self.continue.bounds.size.width += 10
        }, completion:{ finished in
            UIView.animate(withDuration: 0.3, delay: 0.4,usingSpringWithDamping:0.2, initialSpringVelocity: 0.6,options: [ .curveEaseOut], animations: {
                self.continue.bounds.size.width -= 10
            }, completion:nil)
            
            })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
             UIView.animate(withDuration:1, delay: 4, usingSpringWithDamping : 0.1,initialSpringVelocity: 0.5, options: [.curveEaseIn], animations: {
                self.continue.alpha = 1.0
            self.continue.center.y -= -30
                self.continue.bounds.size.width += 10
                UIView.animateKeyframes(withDuration: 1, delay: 0.2, options: [ ], animations: {
                    
                }, completion:nil)
            
        }, completion: nil)
    
        UIView.animate(withDuration: 1.0, animations: {
            self.helloworld.center.y += self.view.bounds.height
        }, completion:{ finished in
            self.secondanimation()
        })
        UIView.animate(withDuration: 0.5, delay: 0.7, options: [ ], animations: {
            self.view.backgroundColor = UIColor.blue
        }, completion: nil)
    
       
     UIView.animate(withDuration: 3.0, delay: 3.0, options: [] , animations:
        {
            
    self.hiddenLabel.alpha = 1.0
    self.hiddenLabel.alpha = 0.0
     }, completion: nil)
        
    }
    func changeBackground(){
        UIView.animate(withDuration: 1,delay:0.5,
                       options:[], animations: {
            self.view.backgroundColor = UIColor.black
            
        }, completion: { finished in
            self.animateTextField()
        })
        
        
        
    }
    func secondanimation(){
        UIView.animate(withDuration: 2.0, animations: {
            self.secondlabel.center.y -= self.view.bounds.height
        }, completion:nil)
        UIView.animate(withDuration: 3.0, delay: 1.0, options: [ ], animations: {
            self.view.backgroundColor = UIColor.gray
        }, completion: {finished in
            self.changeBackground()
        })
        
    }
    func animateTextField(){
      
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: [], animations: {
            self.pass.backgroundColor = UIColor.white
        }, completion: nil)
        UIView.animate(withDuration:1, delay: 4, usingSpringWithDamping : 0.1,initialSpringVelocity: 0.5, options: [.curveEaseIn], animations: {
            self.pass.center.x += self.view.bounds.width
        }, completion: nil)
    }
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        self.view.backgroundColor = UIColor.green
    }


}

