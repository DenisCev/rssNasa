//
//  ListRssInterfaces.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright (c) 2018 Denis. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum ListRssNavigationOption {
}

protocol ListRssWireframeInterface: WireframeInterface {
    func navigate(to option: ListRssNavigationOption)
}

protocol ListRssViewInterface: ViewInterface {
}

protocol ListRssPresenterInterface: PresenterInterface {
}

protocol ListRssInteractorInterface: InteractorInterface {
}
