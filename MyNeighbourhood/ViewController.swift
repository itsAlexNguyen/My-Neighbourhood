//
//  ViewController.swift
//  MyNeighbourhood
//
//  Created by Alex Nguyen on 2016-01-14.
//  Copyright © 2016 Alex Nguyen. All rights reserved.
//


/*
NOTES: 
- Add UITableViewDelegate to access tableview stuff
- Add UITableViewDataSource to access the data in table
- Set tableView delegate/Data source to self
- add numberOfSectionsInTableView function (usually return 1)
- add tableView(....cellForRowAtIndexPath...) Get prototype cell
- add tableView(....heightForRowAtIndexPath...) return height of cell
- add tableView(....numberOfRowsInSection...) how many rows?

*/
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var posts = [Post]()
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self //This class is the delegate
        tableView.dataSource = self //Set where to get the data
        
        var post = Post(imagePath: "", title: "Post 1", description: "post 1 descp")
        var post2 = Post(imagePath: "", title: "Post 2", description: "post 2 descp")
        var post3 = Post(imagePath: "", title: "Post 3", description: "post 3 descp")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row] //Get third row, get third array 
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("postCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 86.5
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
}

