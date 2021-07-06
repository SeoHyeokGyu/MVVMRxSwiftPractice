//
//  Article.swift
//  MVVMRxSwiftPractice
//
//  Created by 서혁규 on 2021/07/05.
//

import Foundation
//Codable : JSON 형식을 Swift 구조체 형식으로 컨버트할 수 있게 해준다.

struct ArticleResponse:Codable {
    let status:String
    let totalResults:Int
    let articles:[Article]
}
struct Article:Codable {
    let author:String?
    let title:String?
    let description:String?
    let url:String?
    let urlToImage:String?
    let publishedAt:String?
    
}
