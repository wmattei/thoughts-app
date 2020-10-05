//
//  ThoughtRow.swift
//  thoughts
//
//  Created by Wagner Mattei on 04/10/20.
//

import SwiftUI

struct ThoughtRow: View {
    
    var thought: Thought;
    
    var title: some View {
        VStack {
            Text(thought.from.name).fontWeight(Font.Weight.light)
        }
    }
    
    var body: some View {
        GroupBox(label: title) {
            Text("\""+thought.content+"\"")
                .italic()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
        }.accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

    }
}

struct ThoughtRow_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ThoughtRow(
                thought: Thought(
                    id: 1,
                    content: "It's not real until your wife is on board",
                    createdAt: Date(),
                    from: User(
                        id: 1,
                        name: "Daryl Philbin",
                        username: "daryl"
                    )
                )
            ).previewLayout(.fixed(width: 400, height: 100))
            ThoughtRow(
                thought: Thought(
                    id: 1,
                    content: "It's not real until your wife is on board",
                    createdAt: Date(),
                    from: User(
                        id: 1,
                        name: "Daryl Philbin",
                        username: "daryl"
                    )
                )
            ).previewLayout(.fixed(width: 200, height: 200))
        }
    }
}
