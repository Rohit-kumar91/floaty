//
//  ViewController.swift
//  Floaty
//
//  Created by Rohit Prajapati on 28/07/19.
//  Copyright © 2019 Rohit Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackt1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var stack3: UIStackView!
    
    @IBOutlet weak var createPost: UIButton!
    @IBOutlet weak var postAndExplore: UIButton!
    @IBOutlet weak var speakOut: UIButton!
    @IBOutlet weak var mainBtn: UIButton!
    
    var open = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actions(_ sender: UIButton) {
        
        switch sender {
        case createPost:
            break
        default:
            print("default")
            open = !open
            if open {
                hide()
            } else {
                unHide()
            }
            
            
        }
        
    }
    
    func hide() {
        
        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: [], animations: {
            
            self.stackt1.isHidden = true
            self.stackt1.layoutIfNeeded()
            
        }, completion: { (completion) in
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: [], animations: {
                
                self.stack2.isHidden = true
                self.stack2.layoutIfNeeded()
                
            }, completion: { (completion) in
                UIView.animate( withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: [], animations: {
                    
                    self.stack3.isHidden = true
                    self.stack3.layoutIfNeeded()
                    
                }, completion: nil
                )
            }
            )
        }
        )
    }
    
    func unHide() {
        
        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: [], animations: {
            
            self.stack3.isHidden = false
            self.stack3.layoutIfNeeded()
            
        }, completion: { (completion) in
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: [], animations: {
                
                self.stack2.isHidden = false
                self.stack2.layoutIfNeeded()
                
            }, completion: { (completion) in
                UIView.animate( withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: [], animations: {
                    
                    self.stackt1.isHidden = false
                    self.stackt1.layoutIfNeeded()
                    
                }, completion: nil
                )
            }
            )
        }
        )
    }
    

}

extension UIView {
    
    func hideAnimated(in stackView: UIStackView) {
        if !self.isHidden {
            UIView.animate(
                withDuration: 0.35,
                delay: 0,
                usingSpringWithDamping: 0.9,
                initialSpringVelocity: 1,
                options: [],
                animations: {
                    self.isHidden = true
                    stackView.layoutIfNeeded()
            },
                completion: nil
            )
        }
    }
    
    func showAnimated(in stackView: UIStackView) {
        if self.isHidden {
            UIView.animate(
                withDuration: 0.35,
                delay: 0,
                usingSpringWithDamping: 0.9,
                initialSpringVelocity: 1,
                options: [],
                animations: {
                    self.isHidden = false
                    stackView.layoutIfNeeded()
            },
                completion: nil
            )
        }
    }
}

