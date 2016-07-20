//
//  Article.swift
//  NewsApp
//
//  Created by Teodor on 19/03/16.
//  Copyright © 2016 TeodorGarzdin. All rights reserved.
//

import Foundation

struct Article {
    var title: String?
    var text: String?
    
    init(article: [String: AnyObject]?) {
        if let article = article as [String: AnyObject]? {
            if let title = article["title"] as? String {
                self.title = title
            }
            if let text = article["text"] as? String {
                self.text = text
            }
        }
    }
}