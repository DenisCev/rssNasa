//
//  Item.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class Item: XMLMappable {
    var nodeName: String!
    
    var title: String?
    var link: String?
    var description: String?
    var enclosure: Enclosure?
    var guid: GUID?
    var pubDate: String?
    var source: Source?
    
    init(title: String, link: String, description: String, enclosure: Enclosure, guid: GUID, pubDate: String, source: Source) {
        self.title = title
        self.link = link
        self.description = description
        self.enclosure = enclosure
        self.guid = guid
        self.pubDate = pubDate
        self.source = source
    }
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        title <- map["title"]
        link <- map["link"]
        description <- map["description"]
        enclosure <- map["enclosure"]
        guid <- map["guid"]
        pubDate <- map["pubDate"]
        source <- map["source"]
    }
}
