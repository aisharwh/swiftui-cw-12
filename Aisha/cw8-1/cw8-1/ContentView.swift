//
//  ContentView.swift
//  cw8-1
//
//  Created by MacBook` on 07/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
            .environmentObject(Env())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    
    @EnvironmentObject var env: Env
    
    var body: some View {
        VStack{
            Text("مرحبا بك في الكويت تبرمج")
                .padding(.bottom, 50)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                    env.isMentor.toggle()
                
            }) {
                Text("ادخل بياناتك")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white).padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius:  15))
            }.sheet(isPresented: $env.isMentor) {
                SecondPage(env: self.env)
            }
            if env.name != "" {
                HStack{
                    Spacer()
                    VStack(alignment: .trailing, spacing: 10){
                        Text("الاسم: \(env.name)")
                        Text("العمر: \(env.age)")
                        Text("الهاتف: \(env.phone)")
                    }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                }
            }
            
        }
    }
}


