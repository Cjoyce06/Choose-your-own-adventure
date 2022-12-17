//
//  Choice.swift
//  Choose your own adventure
//
//  Created by Colin Joyce on 12/14/22.
//

import Foundation
struct Choice: Identifiable {
    let title: String
    let tag: Int
    let id = UUID() 
}

