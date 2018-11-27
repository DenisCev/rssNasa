//
//  ListRssInteractor.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright (c) 2018 Denis. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Alamofire

final class ListRssInteractor {
    private let _listRssService = ListRssService()
}

// MARK: - Extensions -

extension ListRssInteractor: ListRssInteractorInterface {
    func getListRSS(_ completion: @escaping ListRSSCompletionBlock) -> DataRequest {
        return _listRssService.getListRSS(completion)
    }
    
    
    
}
