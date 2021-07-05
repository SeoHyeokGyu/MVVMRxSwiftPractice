//
//  RootViewController.swift
//  MVVMRxSwiftPractice
//
//  Created by 서혁규 on 2021/07/05.
//

import UIKit
import RxSwift
import RxRelay

class RootViewController: UIViewController {

    let disposeBag = DisposeBag()
    let viewModel:RootViewModel
    
    private let articleViewModel = BehaviorRelay<[ArticleViewModel]>(value: [])
    var articleViewModelObserver:Observable<[ArticleViewModel]>{
        return articleViewModel.asObservable()
    }
    
    init(viewModel:RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        fetchArticles()
        subscribe()

        // Do any additional setup after loading the view.
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
    }
    
    func fetchArticles() {
        viewModel.fetchArticles().subscribe(onNext: { articleViewModels in
            self.articleViewModel.accept(articleViewModels)
        }).disposed(by: disposeBag)

    }
    
    func subscribe() {
        self.articleViewModelObserver.subscribe(onNext: { articles in
            print(articles)
        }).disposed(by: disposeBag)
    }
    

}
