//
//  SecondViewController.swift
//  Words
//
//  Created by yangsibai on 15/12/6.
//  Copyright © 2015年 massimo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddWord_Click(sender: UIButton) {
        wordMgr.addNewWord(txtName.text!, desc: txtDesc.text!)
        self.view.endEditing(true)
        txtName.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    //IOS Touch Functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

