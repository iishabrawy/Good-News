//
//  Webservice.swift
//  Good News
//
//  Created by Ismael AlShabrawy on 6/8/19.
//  Copyright © 2019 Ismael AlShabrawy. All rights reserved.
//

import Foundation

class Webservice {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                print(articleList?.articles)
                print(articleList?.status)
                print(articleList?.totalResults)
//
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }.resume()
    }
}
