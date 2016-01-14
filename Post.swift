//
//  Post.swift
//  MyNeighbourhood
//
//  Created by Alex Nguyen on 2016-01-14.
//  Copyright © 2016 Alex Nguyen. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String!
    private var title: String!
    private var postDesc: String!
    
    init(imagePath: String, title: String, description: String) {
        //Constructor
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
        
    }
}

