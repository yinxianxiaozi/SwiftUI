//
//  ArticlesListView.swift
//  Article
//
//  Created by zhangwenyi on 2022/6/20.
//

import SwiftUI

struct ArticlesListView: View {
    let articles: [Article ]
    var body: some View {
#if os(macOS)
        return view.frame(minWidth: 400, minHeight: 600)
#else
        return view
#endif
    }
    @ViewBuilder
    private var view: some View {
        List(articles) {article in
            NavigationLink(destination: ArticleView(article: article)) {
                ArticleView(article: article)  
            }
        }.navigationTitle("\(articles[0].type)")
    }
}
