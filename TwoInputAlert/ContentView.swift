//
//  ContentView.swift
//  TwoInputAlert
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pass = ""
    @State private var pass2 = ""
    @State private var presentAlert = false
    @State private var date = Date()
    var body: some View {

        VStack {
            DatePicker(
                "",
                 selection: $date,
                displayedComponents: [.hourAndMinute])
            .tint(Color.orange)
            
            TextField("password", text: $pass)
                .multilineTextAlignment(.center)
                .border(Color.cyan, width: 1)
                .font(.title2)
            TextField("confirm password", text: $pass2)
                .multilineTextAlignment(.center)
                .border(Color.cyan, width: 1)
                .font(.title2)
            Button("submit") {
                if pass != pass2{
                   presentAlert = true
                }
            }
            .font(.headline)
            .buttonStyle(.borderedProminent)
            .tint(Color.orange)
            //hello 
        }
        .padding()
        .alert("passwords must match", isPresented: $presentAlert, actions: {})
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
