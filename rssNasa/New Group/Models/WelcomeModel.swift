//
//  WelcomeModel.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class WelcomeModel: XMLMappable {
    var nodeName: String!
    
    
    var rss: RSS?
    
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        rss <- map["rss"]
    }
}
