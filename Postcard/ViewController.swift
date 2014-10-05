//
//  ViewController.swift
//  Postcard
//
//  Created by Tobias Schuster on 02.10.14.
//  Copyright (c) 2014 Tobias Schuster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a Comment here to test Commits
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextfield.text;
        messageLabel.textColor = UIColor.redColor();
        
        enterMessageTextfield.text = "";
        enterMessageTextfield.resignFirstResponder();
        
        sendMailButton.setTitle("Mail Sent",forState: UIControlState.Normal);
        
        nameLabel.hidden = false;
        nameLabel.textColor = UIColor.blueColor();
        nameLabel.text = enterNameTextfield.text;
        enterNameTextfield.text = "";
        enterNameTextfield.resignFirstResponder();
        
        
    }
    


}

