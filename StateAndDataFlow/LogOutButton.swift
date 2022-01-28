//
//  LogOutButton.swift
//  StateAndDataFlow
//
//  Created by Ирина on 27.01.2022.
//

import SwiftUI

struct LogOutButton: View {
    var body: some View {
        Button(action: RegisterView().registerUser) {
        Text("LogOut")
    }
}
}
struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
