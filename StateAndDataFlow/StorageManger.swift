//
//  DataManger.swift
//  StateAndDataFlow
//
//  Created by Ирина on 27.01.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    static let shared = StorageManager ()
    
    @Published var userName: String {
        didSet {
            UserDefaults.standard.set(userName, forKey: "nameUser")
        }
    }
    init() {
        self.userName = UserDefaults.standard.object(forKey: "nameUser") as? String ?? ""
    }
}
