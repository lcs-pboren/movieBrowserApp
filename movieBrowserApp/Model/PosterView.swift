//
//  PosterView.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-11.
//

import SwiftUI

struct PosterView: View {
    
    
    let fromURL: URL
    
   
    var body: some View {
        
       
        AsyncImage(url: fromURL,
                   content: { downloadedImage in
            downloadedImage
        },
                   placeholder: {
            ProgressView()
        })

    }
    
}

struct RemoteImageView_Previews: PreviewProvider {
    
    
    static let example = URL(string: testMovie.Poster)!
    
    static var previews: some View {
        PosterView(fromURL: example)
    }
}
