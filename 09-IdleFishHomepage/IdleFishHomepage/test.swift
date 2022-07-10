//
//  test.swift
//  IdleFishHomepage
//
//  Created by Zions Jen on 2021/12/12.
//

import SwiftUI

extension VerticalAlignment {
    private enum MyAlignment : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return 0
        }
    }
    static let myAlignment = VerticalAlignment(MyAlignment.self)
}

struct test: View {
    @State private var selectedIdx = 1
    
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        HStack(alignment: .myAlignment) {
            Image(systemName: "arrow.right.circle.fill")
                .alignmentGuide(.myAlignment, computeValue: { d in d[VerticalAlignment.center] })
                .foregroundColor(.green)
            
            VStack(alignment: .leading) {
                ForEach(days.indices, id: \.self) { idx in
                    Group {
                        if idx == self.selectedIdx {
                            Text(self.days[idx])
                                .transition(AnyTransition.identity)
                                .alignmentGuide(.myAlignment, computeValue: { d in d[VerticalAlignment.center] })
                        } else {
                            Text(self.days[idx])
                                .transition(AnyTransition.identity)
                                .onTapGesture {
                                    withAnimation {
                                        self.selectedIdx = idx
                                    }
                                }
                        }
                    }
                }
            }
        }
        .padding(20)
        .font(.largeTitle)
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
