//
//  ContentView.swift
//  NageshLoginApp_try1
//
//  Created by Nagesh Allur on 11/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showLoginScreen = false
    
    var body: some View {
        NavigationView{
            
            VStack{
                Text("Login")
                    .font(.largeTitle)
                    .padding()
                
                TextField("Username",text:$username).padding(10).cornerRadius(20).padding(.horizontal).background(Color(.systemGray6))
                SecureField("Password",text:$password).padding(10).cornerRadius(20).padding(.horizontal).background(Color(.systemGray6))
                Button("Login"){
                    //Authenticate User
                    AuthenticateUser(username: username, password: password)
                }.padding(10).cornerRadius(20).padding(.horizontal).background(Color(.systemGray6))
                
                NavigationLink(destination: Text("you are Loggedin"), isActive: $showLoginScreen){
                    EmptyView()
                    
                }
                
            }
            
        }.navigationBarHidden(true)
        
    }
    
    func AuthenticateUser(username:String,password:String){
        if username.lowercased() == "nagesh" && password == "1234"{
            showLoginScreen=true
        }else {
            //wrong password
        }
        
    }
}

#Preview {
    ContentView()
}
