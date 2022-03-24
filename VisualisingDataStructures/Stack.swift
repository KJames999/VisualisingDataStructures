//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by James, Killian (NA) on 03/03/2022.
//

import Foundation
import SwiftUI

class Stack: ObservableObject {
    @Published var stack: [String] = ["i", "a"]
    var stackList: String {
        var stackDisplay = ""
        for item in stack {
            stackDisplay += item
            stackDisplay += "\n"
        }
        return stackDisplay
    }
    
    func peek() -> String {
        if stack.count == 0 {
            return "Empty"
        } else {
            return "Top of stack: \(stack[0])"
        }
    }
    
    func pop() -> String {
        if stack.count != 0 {
            return stack.popFirst()!
        } else {
            print("Cannot pop from an empty stack")
        }
        return "hmmm"
    }
    
}
