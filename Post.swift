//
//  Post.swift
//  MyNeighbourhood
//
//  Created by Alex Nguyen on 2016-01-14.
//  Copyright © 2016 Alex Nguyen. All rights reserved.
//

import Foundation

class Post {
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    //GETTERS
    var imagePath: String {
        return _imagePath
    }
    var title: String {
        return _title
    }
    var postDesc: String {
        return _postDesc
    }
    
    
    init(imagePath: String, title: String, description: String) {
        //Constructor
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
        
    }
}

