//
//  LinkClass.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class LinkClass: XMLMappable {
    var nodeName: String!
    
    var rel: String?
    var href: String?
    var linkPrefix: String?
    
    init(rel: String, href: String, linkPrefix: String) {
        self.rel = rel
        self.href = href
        self.linkPrefix = linkPrefix
    }
    
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        rel <- map["_rel"]
        href <- map["_href"]
        linkPrefix <- map["__prefix"]
    }
}

enum LinkElement {
    case linkClass(LinkClass)
    case string(String)
}
