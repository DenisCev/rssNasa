//
//  ListRssService.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import Alamofire
import XMLMapper

typealias ListRSSCompletionBlock = (DataResponse<RSS>) -> (Void)

class ListRssService: NSObject {
    
    @discardableResult
    func getListRSS(_ completion: @escaping ListRSSCompletionBlock) -> DataRequest {
        
        let url = URL(string: "\(APIConstants.URLBase)\(APIConstants.ImageOfTheDay)")!
        let respons = Alamofire.request(url).responseXMLObject(completionHandler: completion)
        
        return respons
        
    }
    
}
