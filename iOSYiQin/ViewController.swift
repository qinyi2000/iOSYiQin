//
//  ViewController.swift
//  iOSYiQin
//
//  Created by Yi Qin on 9/8/18.
//  Copyright © 2018 Yi Qin. All rights reserved.
//

import UIKit
//import os.log
class ViewController: UIViewController {
    /* Outlets should be on top */
    @IBOutlet weak var Label: UILabel!
    // Create a variable that holds the background color, so we can reset it
    var backgroundColor: UIColor!
    var textColor: UIColor!
    var defaultString = "Goodbye👋"
    // Create an outlet for textfield
    @IBOutlet weak var textField: UITextField!
    // When the screen loads for the first time, the function can set something
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
        textColor = Label.textColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Will be run any time we tap the button
    @IBAction func didTapButton(_ sender: Any) {
        Label.textColor = UIColor.orange
        print("Yes, it worked!")
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        print(Label.text as Any)
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //If there's anything in textField, change
        //to textField.text; if none, use default
        //"Goodbye!"
        if ((textField.text)?.isEmpty)!{
            Label.text = defaultString
        } else {
            Label.text = textField.text
        }
        textField.text = ""
        // This ends the cursor in the textField
        view.endEditing(true)
        //textField.resignFirstResponder()
    }
    
    // Tap anywhere and the gesture sensor will recognize gestures and
    // call this function
    @IBAction func onReset(_ sender: Any) {
        Label.text = "Hello from Yi"
        Label.textColor = textColor
        textField.text = ""
        view.backgroundColor = backgroundColor
    }
    // Dismiss the keyboard after typing
    func dismiss(_ sender:UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}

