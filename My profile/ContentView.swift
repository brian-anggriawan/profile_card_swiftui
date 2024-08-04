//
//  ContentView.swift
//  My profile
//
//  Created by Brian Anggriawan on 03/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea(.all)
            VStack {
                Image("profile")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                    )
                    .shadow(radius: 10)
                Text("Brian Anggriawan")
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .bold()
                Text("Tech Manager | Backend Developer | Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                Divider()
                PrivateInfoView(title: "082228113269", iconName: "phone.fill")
                PrivateInfoView(title: "briananggriawan31@gmail.com", iconName: "envelope.fill")
                    
            }
        }
    }
}


#Preview {
    ContentView()
}

struct PrivateInfoView: View {
    let title: String
    let iconName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: iconName)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text(title)
                        .foregroundColor(Color(.systemBlue))
                }
                
            )
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 10))
    }
}
