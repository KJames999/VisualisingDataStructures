//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by James, Killian (NA) on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var stack = Stack()
    
    
    var body: some View {
        
        VStack {
            Text("Peek: ")
                .padding()
        }
        
        VStack {
            Button("\(stack.pushItem)", action: {
                stack.push(pushItem: "testing pushed item")
            })

        }
        
        VStack {
            Button("\(stack.stack[0])", action: {
                stack.push(pushItem: "testing pushed item")
            })

            
        }
        
        VStack {
            Text("Pop: ")
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
