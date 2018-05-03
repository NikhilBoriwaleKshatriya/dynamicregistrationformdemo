//
//  ViewController.swift
//  dynamicregistrationformdemo
//
//  Created by nikhil boriwale on 5/3/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i = 1
    var y = 136
    override func viewDidLoad() {
        super.viewDidLoad()
     managedtextfield()
        managelabel()
        managebutton()
    }

    func  managedtextfield() {
        for i in 1...5{
        let mytextfield : UITextField = UITextField(frame: CGRect(x: 23, y: y, width:340, height: 30))
        mytextfield.borderStyle = .roundedRect
        self.view.addSubview(mytextfield)
        y = y + 52
            if i == 1{   //for each textfield
                mytextfield.placeholder = "Name"
                mytextfield.tag = 1   //by using tag u can set ,stored value  working functionality Server reated
            }
            else if i == 2
            {
                mytextfield.placeholder = "Lastname"
                  mytextfield.tag = 2
            }
            else if i == 3 {
                mytextfield.placeholder = "gmail"
                  mytextfield.tag = 3
                
            }else if i == 4 {
                 mytextfield.placeholder = "password"
                  mytextfield.tag = 4
            }else if i == 5 {
                mytextfield.placeholder = "userid"
                  mytextfield.tag = 5
            }
        }
      
    }
    func  managelabel()  {
        let mylabel = UILabel(frame: CGRect(x: 16, y:80 , width:343, height: 21))
        mylabel.text = "Register form"
        mylabel.textColor = UIColor.red
        mylabel.textAlignment = .center
        self.view.addSubview(mylabel)
    }

    func managebutton()  {
        let mybutton = UIButton(frame: CGRect(x: 141 , y:430 , width:93, height: 30))
        mybutton.setTitle("register", for: .normal)
        mybutton.setTitleColor(UIColor.black, for: .normal)
        mybutton.backgroundColor = UIColor.gray
        mybutton.addTarget(self, action: #selector(valuechange), for: .touchUpInside)
        self.view.addSubview(mybutton)
    }

   @objc func valuechange()  {
        print("button touch")
    }
}

