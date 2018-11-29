//
//  ListRSSCell.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import UIKit

class ListRSSCell: UITableViewCell {
    
    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var textDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(with item: Item) {
        textTitle.text = item.title
        date.text = item.pubDate
        textDescription.text = item.description
    }
    
}
