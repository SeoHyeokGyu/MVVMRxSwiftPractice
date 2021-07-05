//
//  RootViewModel.swift
//  MVVMRxSwiftPractice
//
//  Created by 서혁규 on 2021/07/05.
//

import Foundation
import RxSwift

final class RootViewModel {
    let title = " News"
    
    private let articleService:ArticleServiceProtocol
    
    init(articleService:ArticleServiceProtocol) {
        self.articleService = articleService
    }
    
    func fetchArticles() -> Observable<[Article]> {
        articleService.fetchNews()
    }
}
