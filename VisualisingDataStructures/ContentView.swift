//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by James, Killian (NA) on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stack = Stack()
    @State private var showPeek = false
    @State private var showPop = false
    @State private var showView = false
    @State private var activatePush = false
    @State var pushItem: String
    
    
    
    var body: some View {
        VStack {
            Button("view", action: {
                showView.toggle()
            })
            if showView == true {
                Text("\(stack.stackList)")
            }
        }
        Spacer()
        
        VStack {
            Button("peek", action: {
                showPeek.toggle()
            })
            if showPeek == true {
                Text("\(stack.peek())")
            }
        }
        Spacer()
        
        VStack {
            Button("push", action: {
                activatePush.toggle()
                stack.stack.insert(pushItem, at: 0)
            })
            if activatePush == true {
                TextField(
                "what would you like to push?",
                text: $pushItem)
                
            }
        }
        Spacer()
        
        VStack {
            Button("pop", action: {
                _ = stack.pop()
                showPop.toggle()
            })
            if showPop == true {
                Text("\(stack.peek())")
            }
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pushItem: "")
    }
}
