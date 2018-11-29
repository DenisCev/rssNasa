//
//  Source.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class Source: XMLMappable {
    var nodeName: String!
    
    var url: String?
    var text: Title?
    
    init(url: String, text: Title) {
        self.url = url
        self.text = text
    }
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        url <- map["_url"]
        text <- map["__text"]
    }
}

enum Title {
    case nasaImageOfTheDay
}
