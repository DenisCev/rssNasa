//
//  Channel.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class Channel: XMLMappable {
    var nodeName: String!
    
    var title: Title?
    var description: String?
    var link: [LinkElement]?
    var language: String?
    var managingEditor: String?
    var webMaster: String?
    var docs: String?
    var item: [Item]?
    
    init(title: Title, description: String, link: [LinkElement], language: String, managingEditor: String, webMaster: String, docs: String, item: [Item]) {
        self.title = title
        self.description = description
        self.link = link
        self.language = language
        self.managingEditor = managingEditor
        self.webMaster = webMaster
        self.docs = docs
        self.item = item
    }
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        title <- map["title"]
        description <- map["description"]
        link <- map["link"]
        language <- map["language"]
        managingEditor <- map["managingEditor"]
        webMaster <- map["webMaster"]
        docs <- map["docs"]
        item <- map["item"]
    }
}
