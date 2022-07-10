//
//  Article.swift
//  Article
//
//  Created by zhangwenyi on 2022/6/20.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    let title: String
    let description:String
    let type: String
}

let techArticles = [
    Article(title: "Undeterred by Facebook news blackout", description: "Undeterred by Facebook news blackout, Australia commits to content law", type: "Tech"),
    Article(title: "Investing in AI with a conscience!", description: "BasisAI chief says there is greater social awareness about responsible AI, with more firms concerned about the reputation risk of adopting AI that is a black box.", type: "Tech"),
    Article(title: "WhatsApp privacy backlash", description: "WhatsApp to move ahead with privacy update despite backlash.", type: "Tech")
]
let businessArticles = [
    Article(title: "Bitcoin hits US$1 trillion value as crypto leads other assets", description: "Bitcoin's market value reached US$1 trillion for the first time, a surge that's helping cryptocurrency returns far outstrip the performance of more traditional assets like stocks and gold.", type: "Business"),
    Article(title: "Nets eyes larger footprint in online payments space", description: "The CEO wants to boost the firm’s online solutions to appeal more to merchants and consumers.", type: "Business"),
    Article(title: "Market Watch: More market volatility expected ahead", description: "A continuation of the pattern of rotational plays focused on situational stocks can be expected going forward.", type: "Business")
]
let sportArticles = [
    Article(title: "Football: Sterling strikes early as leaders Manchester City sink Arsenal", description: "Pep Guardiola's side have now got 18 successive victories in all competitions.", type: "Sport"),
    Article(title: "Cancelling the Olympics - a look at what's at stake", description: "the possible scenario of the Tokyo Olympics being cancelled due to the coronavirus pandemic and the consequences for its various stakeholders.", type: "Sport"),
    Article(title: "An Australian Open like no other", description: "Serena Williams of the US hits a return against Germany's Laura Siegemund during their women's singles match on day one of the Australian Open tennis tournament in Melbourne on February 8, 2021.", type: "Sport"),
]
