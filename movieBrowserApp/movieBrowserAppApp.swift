//
//  movieBrowserAppApp.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-10.
//

import SwiftUI

@main
struct movieBrowserAppApp: App {
    
    @State var favourites: [Movie] = []
    
    var body: some Scene {
        WindowGroup {
            
            TabView {

                SearchView(favourites: $favourites)
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Search")
                    }
                
                FavouritesView(favourites: $favourites)
                    .tabItem {
                        Image(systemName: "heart.text.square")
                        Text("Favourites")
                    }
            }
                                
        }
    }
}
