//
//  ContentView.swift
//  Volleybal
//
//  Created by Pieter Bikkel on 30/01/2020.
//  Copyright © 2020 Pieter Bikkel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        
        ZStack(alignment: .top) {
        VStack() {
                Rectangle()
                    .foregroundColor(Color("backgroundColor"))
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
        
        TabView {
            AgendaView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0 )
                Text("\(Constants.TabBarText.tabBar0)")
                }).tag(0)
            
            StandView().tabItem({
            Image(systemName: Constants.TabBarImageName.tabBar1 )
            Text("\(Constants.TabBarText.tabBar1)")
            }).tag(1)
            
            UitslagenView().tabItem({
            Image(systemName: Constants.TabBarImageName.tabBar2 )
            Text("\(Constants.TabBarText.tabBar2)")
            }).tag(2)
            
            NieuwsView().tabItem({
            Image(systemName: Constants.TabBarImageName.tabBar3 )
            Text("\(Constants.TabBarText.tabBar3)")
            }).tag(3)
            
            InstellingenView().tabItem({
            Image(systemName: Constants.TabBarImageName.tabBar4 )
            Text("\(Constants.TabBarText.tabBar4)")
            }).tag(4)
            
            
            
        }.accentColor(Color(#colorLiteral(red: 0.8745098039, green: 0.3411764706, blue: 0.06666666667, alpha: 1)))
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

