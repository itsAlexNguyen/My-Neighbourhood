//
//  PostCell.swift
//  MyNeighbourhood
//
//  Created by Alex Nguyen on 2016-01-14.
//  Copyright © 2016 Alex Nguyen. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    @IBOutlet weak var postImg: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        postImg.layer.cornerRadius = postImg.frame.size.width/2
        postImg.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        
    }
}
