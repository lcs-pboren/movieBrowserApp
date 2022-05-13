//
//  Movie.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-10.
//

import SwiftUI

  
    struct Movie: Decodable {
        
        let ImdbID: String
        let Title: String
        let Rated: String
        let Released: String
        let Runtime: String
        let Genre: String
        let Director: String
        let Poster: String
        
        
        
    }

let testMovie = Movie (ImdbID: "tt0317219",
                       Title: "Cars",
                       Rated:"G",
                       Released:"09 Jun 2006",
                       Runtime:"117 min",
                       Genre:"Animation, Adventure, Comedy",
                       Director:"John Lasseter",
                       Poster:"https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_SX300.jpg")

