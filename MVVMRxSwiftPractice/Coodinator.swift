//
//  Coodinator.swift
//  MVVMRxSwiftPractice
//
//  Created by 서혁규 on 2021/07/05.
//

import UIKit

class Coodinator{
    let window:UIWindow
    
    init(window:UIWindow){
        self.window = window
    }
    
    func start() {
        let rootViewController = RootViewController(viewModel: RootViewModel(articleService:ArticleService()))
        let navigationRootController = UINavigationController(rootViewController: rootViewController)
       //지정
        window.rootViewController = navigationRootController
        // 화면에 렌더링
        window.makeKeyAndVisible()
        
    }
    
}
