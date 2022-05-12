//
//  MovieDetailView.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-11.
//

import SwiftUI

struct MovieDetailView: View {
    
   
    var Movie: Movie
    
   
    @State var inFavourites: Bool
    
   
    @Binding var favourites: [Movie]
    
   
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                
                PosterView(fromURL: URL(string: Movie.posterUrl)!)
                
                VStack(alignment: .leading) {
                    
                    Text(Movie.movieName)
                        .font(.title)
                    
                    Text(Movie.directorName)
                        .font(.subheadline)
                    
                }
                
            }
            
            HStack {
                

                Spacer()

                FavouritesButtonView(Movie: Movie,
                                     inFavourites: $inFavourites,
                                     favourites: $favourites)
            }
            .padding(.top, 20)
            .padding(.horizontal, 5)
            
            Text("Info Links")
                .font(.title2)
                .bold()
                .padding(.top, 20)
            
            Link("View Director", destination: URL(string: Movie.directorViewUrl)!)
                .padding(.top, 5)
            

            
            Spacer()
                .frame(maxWidth: .infinity)
            
        }
        .padding()
        
        .navigationBarTitleDisplayMode(.inline)
    
    }
    
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MovieDetailView(Movie: testMovie,
                     inFavourites: false,
                     favourites: .constant([]))
        }
    }
}
