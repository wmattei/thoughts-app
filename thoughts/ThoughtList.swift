//
//  ThoughtList.swift
//  thoughts
//
//  Created by Wagner Mattei on 04/10/20.
//

import SwiftUI

struct ThoughtList: View {
    var body: some View {
        List(thoughtData) {thought in
            VStack {
                ThoughtRow(thought: thought)
                Spacer()
            }
        }
    }
}

struct ThoughtList_Preview: PreviewProvider {
    static var previews: some View {
        ThoughtList()
    }
}
