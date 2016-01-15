//
//  AddPostVC.swift
//  MyNeighbourhood
//
//  Created by Alex Nguyen on 2016-01-14.
//  Copyright © 2016 Alex Nguyen. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    
    @IBAction func makePostButtonPressed(sender: AnyObject) {
        
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func addPicButtonPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal)
    }
}
