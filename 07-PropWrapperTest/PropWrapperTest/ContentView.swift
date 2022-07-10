//
//  ContentView.swift
//  PropWrapperTest
//
//  Created by 张文艺 on 2022/7/10.
//

import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}

//@State
/*
struct ContentView: View {
    @State private var str: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder", text: $str)
            Text("\(str)")
        }
    }
}
*/

//@Binding
/*
struct BtnView: View {
    @Binding var isShowText: Bool
    
    var body: some View {
        Button {
            isShowText.toggle()
        } label: {
            Text("点击")
        }

    }
}

struct ContentView: View {
    @State private var isShowText: Bool = true
    var body: some View {
        VStack {
            if(isShowText) {
                Text("点击后会被隐藏")
            } else {
                Text("点击后会被显示").hidden()
            }
            BtnView(isShowText: $isShowText)
        }
    }
}
*/

class DelayedUpdater: ObservableObject {
    @Published var value = 0
    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.value += 1
            }
        }
    }
}

/*
 struct ContentView: View {
     @ObservedObject var updater = DelayedUpdater()
     var body: some View {
         VStack {
             Text("\(updater.value)").padding()
         }
     }
 }
 */

//@EnvironmentObject
/*
struct EnvView: View {
    @EnvironmentObject var updater: DelayedUpdater
    
    var body: some View {
        Text("\(updater.value)")
    }
}

struct BtnvView: View {
    @EnvironmentObject var updater: DelayedUpdater
    
    var body: some View {
        Text("\(updater.value)")
    }
}
struct ContentView: View {
    let updater = DelayedUpdater()
    var body: some View {
        VStack {
            EnvView().environmentObject(updater)
            BtnvView().environmentObject(updater)
        }
    }
}

*/


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
