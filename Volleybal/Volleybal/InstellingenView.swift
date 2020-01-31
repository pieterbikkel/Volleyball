//
//  InstellingenView.swift
//  Volleybal
//
//  Created by Pieter Bikkel on 30/01/2020.
//  Copyright © 2020 Pieter Bikkel. All rights reserved.
//

import SwiftUI

struct InstellingenView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor : UIColor(#colorLiteral(red: 0.8745098039, green: 0.3411764706, blue: 0, alpha: 1))]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            }
            .navigationBarTitle(Text("Instellingen"))
        }
    }
}

struct InstellingenView_Previews: PreviewProvider {
    static var previews: some View {
        InstellingenView()
    }
}
