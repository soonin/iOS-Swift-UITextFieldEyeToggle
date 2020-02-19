//
//  ViewController.swift
//  iOS-Swift-UITextFieldEyeToggle
//
//  Created by Pooya on 2020-02-18.
//  Copyright © 2020 centurytrail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var password_textfield : UITextField!
    let button = UIButton(type: .custom)
    var btnColor = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //password_textfield.rightView = btnColor
        password_textfield.rightViewMode = .unlessEditing
        
        button.setImage(UIImage(named: "eye_closed.png"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: -24, bottom: 5, right: 15)
        button.frame = CGRect(x: CGFloat(password_textfield.frame.size.width - 25), y: CGFloat(5), width: CGFloat(15), height: CGFloat(25))
        button.addTarget(self, action: #selector(self.btnPasswordVisiblityClicked), for: .touchUpInside)
        password_textfield.rightView = button
        password_textfield.rightViewMode = .always
        
    }

    @IBAction func btnPasswordVisiblityClicked(_ sender: Any) {
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (sender as! UIButton).isSelected {
            self.password_textfield.isSecureTextEntry = false
            button.setImage(UIImage(named: "eye_open.png"), for: .normal)
        } else {
            self.password_textfield.isSecureTextEntry = true
            button.setImage(UIImage(named: "eye_closed.png"), for: .normal)
        }
    }
    

}

