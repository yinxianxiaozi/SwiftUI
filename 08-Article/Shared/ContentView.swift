//
//  ContentView.swift
//  Shared
//
//  Created by zhangwenyi on 2022/6/20.
//

import SwiftUI

struct ContentView: View {
#if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass:UserInterfaceSizeClass?
#endif
    @ViewBuilder
    var body: some View {
        NavigationView {
#if os(iOS)
            if horizontalSizeClass == .compact {
                TabBarView()
            } else {
                SideBarView()
            }
#else
            SideBarView()
#endif
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
