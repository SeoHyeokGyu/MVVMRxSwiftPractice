//
//  ArticleViewModel.swift
//  MVVMRxSwiftPractice
//
//  Created by 서혁규 on 2021/07/05.
//

import Foundation

struct ArticleViewModel {
    private let article:Article
    
    var imageURL:String?{
        return article.urlToImage
    }
    
    var title:String?{
        return article.title
    }
    
    var description:String?{
        return article.descriptions
    }
    init(article:Article){
        self.article = article
    }
}
