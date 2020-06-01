//
//  Article.swift
//  Good News
//
//  Created by Ismael AlShabrawy on 6/8/19.
//  Copyright © 2019 Ismael AlShabrawy. All rights reserved.
//

import Foundation

struct ArticleList: Codable {
    let status: String
    let totalResults: Int
    let articles : [Article]
}

struct Article: Codable {
    let title : String?
    let description : String?
}
