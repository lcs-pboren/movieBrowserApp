//
//  favouritesView.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-11.
//

import SwiftUI

struct FavouritesButtonView: View {
    
    
   
    let Movie: Movie
    
    @Binding var inFavourites: Bool
    
   
    @Binding var favourites: [Movie]
        
  
    var body: some View {
        
        
        Button(action: {
            
            addOrRemoveMovieFromFavourites()
            
        }) {
            
            HStack {
                Text(inFavourites ? "Remove from\nFavourites" : "Add to\nFavourites")
                    .multilineTextAlignment(.center)

                Image(systemName: inFavourites ? "suit.heart.fill" : "suit.heart")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("blue"))
            }
            
        }
        
    }
    

    func addOrRemoveMovieFromFavourites() {
        
       
        if inFavourites == false {
            
           
            favourites.append(Movie)
            inFavourites = true
            
        } else {
            
        
            favourites.removeAll(where: { currentMovieInList in
                currentMovieInList.ImdbID == Movie.ImdbID
                
            })
            inFavourites = false
        }

        
    }

}

struct FavouritesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesButtonView(Movie: testMovie,
                             inFavourites: .constant(true),
                             favourites: .constant([]))
    }
}
