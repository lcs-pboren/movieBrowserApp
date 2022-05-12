//
//  Movie.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-10.
//

import SwiftUI

  
    struct Movie: Decodable {
        
        let imdbID: String
        let directorName: String
        let movieName: String
        let directorViewUrl: String
        
        let posterUrl: String
        
        
        
    }

    let testMovie = Movie ( imdbID: "tt0317219" ,
                           directorName: "John Lasseter",
                            movieName: "Cars",
                            directorViewUrl: "https://www.imdb.com/name/nm0005124/?ref_=tt_ov_dr",
                            posterUrl: "https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_SX300.jpg")
