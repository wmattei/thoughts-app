//
//  ContentView.swift
//  thoughts
//
//  Created by Wagner Mattei on 04/10/20.
//

import SwiftUI


struct ContentView: View {
    @State var thought: String = ""
    
    func share() -> Void {
        print(thought)
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Share thought", text: $thought).keyboardType(UIKeyboardType.twitter).padding()
                Button(action: share) {
                    Text("Share")
                }.padding().disabled(thought.isEmpty)
            }
            ThoughtList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
