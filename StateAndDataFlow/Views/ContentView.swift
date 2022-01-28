//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    @ObservedObject private var userName = StorageManager()
    
    var body: some View {
        VStack {
            Text("Hi, \(userName.userName)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(title: timer.buttonTitle, action: timer.startTimer, backgroundColor: .red)
            Spacer()
            ButtonView(title: "LogOut", action: logOut, backgroundColor: .blue)
            Spacer()
        }
    }
    
    private func logOut() {
        UserDefaults.standard.removeObject(forKey: "nameUser")
        userManager.isRegister = false
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}






