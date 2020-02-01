//
//  AgendaView.swift
//  Volleybal
//
//  Created by Pieter Bikkel on 30/01/2020.
//  Copyright © 2020 Pieter Bikkel. All rights reserved.
//

import SwiftUI

struct AgendaView: View {
    
    init() {
            UINavigationBar.appearance().largeTitleTextAttributes = [
                .foregroundColor : UIColor(#colorLiteral(red: 0.8745098039, green: 0.3411764706, blue: 0, alpha: 1))]
        
        UINavigationBar.appearance().backgroundColor = UIColor(named: "backgroundColor")
        }
        
        var body: some View {
            NavigationView {
                ZStack {
                    Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)
                }
                .navigationBarTitle(Text("Agenda"))
            }
        }
    }

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
