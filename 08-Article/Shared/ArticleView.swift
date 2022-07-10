//
//  ArticleView.swift
//  Article
//
//  Created by zhangwenyi on 2022/6/20.
//

import SwiftUI

struct ArticleView: View {
    let article: Article
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(article.title)
            .font(.title)
            Text(article.description)
            .font(.headline)
            Spacer()
        }.padding()
    }
}
