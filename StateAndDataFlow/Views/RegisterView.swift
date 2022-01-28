//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManager: UserManager
    @AppStorage("nameUser") private var nameUser = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $nameUser)
                    .multilineTextAlignment(.center)
                Text("\(nameUser.count)")
                    .foregroundColor(nameUser.count < 3 ? .red : .green)
                    .padding(.leading, -70.0)
            }
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
            .disabled(nameUser.count < 3)
        }
    }
    
    private func registerUser() {
        if !nameUser.isEmpty {
            userManager.name = nameUser
            userManager.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
