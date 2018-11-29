//
//  Enclosure.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XMLMapper

class Enclosure: XMLMappable {
    var nodeName: String!
    
    var url: String?
    var length: String?
    var type: TypeEnum?
    
    init(url: String, length: String, type: TypeEnum) {
        self.url = url
        self.length = length
        self.type = type
    }
    
    required init?(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        url <- map["_url"]
        length <- map["_length"]
        type <- map["_type"]
    }

}

enum TypeEnum {
    case imageJPEG
    case imagePNG
}
