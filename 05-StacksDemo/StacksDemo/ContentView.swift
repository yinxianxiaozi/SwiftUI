//
//  ContentView.swift
//  StacksDemo
//
//  Created by 张文艺 on 2022/7/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //包括leading、trailing、center
        VStack(alignment:.leading, spacing: 20){
            Text("orange").background(.orange).font(.caption)
            Text("red").background(.red).font(.title)
            Text("blue").background(.blue).font(.largeTitle)
            Text("yellow").background(.yellow).font(.callout)
        }
        .border(.gray)
        //包括bottom、top、firstTextBaseline、lastTextBaseline、center、
        HStack(alignment:.bottom, spacing: 20){
            Text("orange").background(.orange).font(.caption)
            Text("red").background(.red).font(.title)
            Text("blue").background(.blue).font(.largeTitle)
            Text("yellow").background(.yellow).font(.callout)
        }
        .border(.gray)
        //包括leading、trailing、bottom、top、bottomLeading、topLeading、bottomtrailing、toptrailing、center
        ZStack(alignment: .bottomTrailing){
            Text("orange").background(.orange).font(.caption)
            Text("red").background(.red).font(.title)
            Text("blue").background(.blue).font(.largeTitle)
            Text("yellow").background(.yellow).font(.callout)
        }
        .border(.gray)
        
        //混合
        HStack {
            ZStack {
                Circle()
                    .fill(Color.yellow)
                Button(action:{
                    print("button tapped")
                }){
                    Text("Press Me")
                }
            }
            .frame(width: 100.0, height: 100.0)
            VStack(alignment: .leading, spacing: 4) { Text("Beginning SwiftUI")
                Text("Greg Lim, 2021")
            }
        }
        
        //相对位置
        VStack (spacing:50){
            Text("Offset by passing CGSize()")
                .border(Color.green)
                .offset(CGSize(width: 20, height: 25))
                .border(Color.gray)

            Text("Offset by passing horizontal & vertical distance")
                .border(Color.green)
                .offset(x: 20, y: 50)
                .border(Color.gray)
        }
        
        
        //绝对位置
//        extension View {
//            @inlinable public func position(x: CGFloat = 0, y: CGFloat = 0) -> some View
//
//        }
        Text("Position by passing a CGPoint()")
            .background(Color.blue)
            .position(CGPoint(x: 175, y: 100))
            .background(Color.green)
            
        Text("Position by passing the x and y coordinates")
            .background(Color.blue)
            .position(CGPoint(x: 175, y: 100))
            .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
