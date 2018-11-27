//
//  GUID.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import Foundation
import ObjectMapper

class GUID: Mappable {
    var isPermaLink: String?
    var text: String?
    
    init(isPermaLink: String, text: String) {
        self.isPermaLink = isPermaLink
        self.text = text
    }
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        isPermaLink <- map["_isPermaLink"]
        text <- map["__text"]
    }
}
