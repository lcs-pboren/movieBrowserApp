//
//  FavouritesView.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-11.
//

import SwiftUI

struct FavouritesView: View {
   
    @Binding var favourites: [Movie]
    

    var body: some View {
        
        NavigationView {
            
            VStack {
               
                if favourites.isEmpty {

                    Spacer()
                    
                    Text("No favourite Movies yet :(")
                        .font(.title)
                        .foregroundColor(.secondary)
                    
                    Spacer()

                } else {

                   
                    List(favourites, id: \.imdbID) { currentMovie in
                        
                        NavigationLink(destination: MovieDetailView(Movie: currentMovie, inFavourites: true, favourites: $favourites)) {
                            ListMovieView(Movie: currentMovie)
                        }
                        
                    }
                    
                }
            }
            .navigationTitle("Favourites")
            
        }
        
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView(favourites: .constant([testMovie]))
    }
}
