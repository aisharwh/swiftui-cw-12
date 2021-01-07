//
//  Env.swift
//  cw8-1
//
//  Created by MacBook` on 07/01/2021.
//

import SwiftUI

class Env: ObservableObject {
@Published var name : String = ""
   @Published var age : String = ""
   @Published var  phone : String = ""
   @Published var isMentor = false
}
