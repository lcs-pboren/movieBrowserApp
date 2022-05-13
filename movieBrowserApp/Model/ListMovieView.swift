//
//  listMovieView.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-11.
//

import SwiftUI


struct ListMovieView: View {
    
   
    var Movie: Movie
    
    var body: some View {

        VStack(alignment: .leading) {
            
            Text(Movie.Title)
            
            Text(Movie.Director)
                .font(.caption)
            
        }

    }
}

struct ListmovieView_Previews: PreviewProvider {
    static var previews: some View {
        ListMovieView(Movie: testMovie)
    }
}
