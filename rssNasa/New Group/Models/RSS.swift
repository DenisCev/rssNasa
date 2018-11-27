//
//  RSS.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class RSS: XMLMappable {
    var nodeName: String!
    
    var channel: Channel?
    var xmlnsAtom: String?
    var xmlnsDc: String?
    var xmlnsItunes: String?
    var xmlnsMedia: String?
    var version: String?
    var xmlBase: String?
    
    init(channel: Channel, xmlnsAtom: String, xmlnsDc: String, xmlnsItunes: String, xmlnsMedia: String, version: String, xmlBase: String) {
        self.channel = channel
        self.xmlnsAtom = xmlnsAtom
        self.xmlnsDc = xmlnsDc
        self.xmlnsItunes = xmlnsItunes
        self.xmlnsMedia = xmlnsMedia
        self.version = version
        self.xmlBase = xmlBase
    }
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        channel <- map["channel"]
        xmlnsAtom <- map["_xmlns:atom"]
        xmlnsDc <- map["_xmlns:dc"]
        xmlnsItunes <- map["_xmlns:itunes"]
        xmlnsMedia <- map["_xmlns:media"]
        version <- map["_xmlns:media"]
        xmlBase <- map["_xml:base"]
    }
}
