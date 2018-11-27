//
//  GUID.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class GUID: XMLMappable {
    var nodeName: String!
    
    var isPermaLink: String?
    var text: String?
    
    init(isPermaLink: String, text: String) {
        self.isPermaLink = isPermaLink
        self.text = text
    }
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        isPermaLink <- map["_isPermaLink"]
        text <- map["__text"]
    }
}
