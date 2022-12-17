//
//  Page.swift
//  Choose your own adventure
//
//  Created by Colin Joyce on 12/12/22.
//

import SwiftUI

struct Page: Identifiable {
    let text: String
    let choices: [Choice]
    
    var id: String {
        text
    }
    let tag: Int
    var Image: String
}
 
