//
//  NewsService.swift
//  NewsApp
//
//  Created by Teodor on 19/03/16.
//  Copyright © 2016 TeodorGarzdin. All rights reserved.
//

import Foundation

struct NewsService {
    let newsBaseURL: URL?
    
    init() {
        newsBaseURL = URL(string: "http://0.0.0.0:5000/api/post/")
    }
    
    func getNews(_ id: Int, completion: ((Article?) -> Void)) {
        if let newsURL = URL(string: "\(id)", relativeTo: newsBaseURL!) {
            let networkOperation = NetworkOperation(url: newsURL)
            networkOperation.downloadJSONFromURL {
                (JSONDictionary) in
                let news = Article(article: JSONDictionary)
                completion(news)
            }
        } else {
            print("Could not construct a valid URL")
        }
    }
}
