//
//  NieuwsView.swift
//  Volleybal
//
//  Created by Pieter Bikkel on 30/01/2020.
//  Copyright © 2020 Pieter Bikkel. All rights reserved.
//

import SwiftUI

struct Nieuws: Identifiable {
    var id = UUID()
    var title: String
    var desc: String
    var article: String
}

struct NieuwsView: View {
    
    let modelData: [Nieuws] = [Nieuws(title: "lol", desc: "mooie beschrijving over het artikel", article:                                      "19-01-2020"),
                               Nieuws(title: "Een prachtige titel die extra lang is gemaakt om te kijken wat er dan gebeurt. dus test test test", desc: "mooie beschrijving over het artikel die ook wat langer is dan normaal gesproken. Kijken wat het effect is! Nog een heel klein beetje moet de beschrijving langer", article: "19-01-2020"),
                               Nieuws(title: "Een prachtige titel", desc: "mooie beschrijving over het artikel", article: "19-01-2020"),
                               Nieuws(title: "Een prachtige titel", desc: "mooie beschrijving over het artikel", article: "19-01-2020")]
    
    let variable = LOL()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor : UIColor(#colorLiteral(red: 0.8745098039, green: 0.3411764706, blue: 0, alpha: 1))]
    }
    
    var body: some View {
        NavigationView {
            List(modelData) { nieuws in
                NavigationLink(destination: Text(nieuws.article).font(.largeTitle)) {
                    HStack {
                        Image(systemName: "photo")
                        VStack(alignment: .leading) {
                            Text(nieuws.title)
                                .font(.headline)
                                .lineLimit(2)
                                .foregroundColor(Color("textColor"))
                            Text(nieuws.desc)
                                .font(.subheadline)
                                .foregroundColor(Color("textColor"))
                                .lineLimit(3)
                        }
                    }
                }
                 .listRowBackground(Color("backgroundColor"))
            }.colorMultiply(Color("backgroundColor")).padding(.top)
                .navigationBarTitle(Text("Nieuws"))
            }
        .background(Color("backgroundColor"))
        .onAppear {
            print("NieuwsView appeared!")
            let feed = self.variable.loadData()
            
            feed.forEach { dingetje in
                print(dingetje)
            }
        }.background(Color("backgroundColor"))
    }
}

struct NieuwsView_Previews: PreviewProvider {git
    static var previews: some View {
        NieuwsView()
    }
}

class LOL {
    
    var myFeed : NSArray = []
    var feedImgs: [AnyObject] = []
    var url: URL!
    
    func loadData() -> NSMutableArray {
        url = URL(string: "https://api.nevobo.nl/export/nieuws.rss")!
        return loadRss(url)
    }
    
    func loadRss(_ data: URL) -> NSMutableArray {
        
        // XmlParserManager instance/object/variable.
        let myParser : XmlParserManager = XmlParserManager().initWithURL(data) as! XmlParserManager
        
        // Put feed in array.
        feedImgs = myParser.img as [AnyObject]
        myFeed = myParser.feeds
        
        return myFeed as! NSMutableArray
    }
    
}


