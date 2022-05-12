//
//  SearchView.swift
//  movieBrowserApp
//
//  Created by Patrick Boren on 2022-05-11.
//

import SwiftUI

struct SearchView: View {
    
   
    @State var searchText: String = ""
    
    
    @State var foundMovies: [Movie] = []
    
  
    @Binding var favourites: [Movie]
    
   
    var body: some View {
        
        NavigationView {
            
            ZStack {

                VStack {
                    

                    List(foundMovies, id: \.imdbID) { currentMovie in
                        
                        NavigationLink(destination: MovieDetailView(Movie: currentMovie, inFavourites: false, favourites: $favourites)) {
                            ListMovieView(Movie: currentMovie)
                        }
                        
                    }
                    .searchable(text: $searchText)
                    .onChange(of: searchText) { whatWasTyped in
                        
                      
                        Task {
                            await fetchResults()
                        }

                    }

                    
                }
                .navigationTitle("Movie Search")

             
                VStack {
                    Spacer()
                    
                    Text("Enter a Movie title!")
                        .font(.title)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                }
                .opacity(searchText.isEmpty ? 1.0 : 0.0)
                
            }
            
            
        }
        
    }
    
  
    func fetchResults() async {
        
      
        let input = searchText.lowercased().replacingOccurrences(of: " ", with: "+")
        
     
        let url = URL(string: "https://www.omdbapi.com/?apikey=b14fcd2e&t=\(input)")!
        
       
        var request = URLRequest(url: url)
        request.setValue("application/json",
                         forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        

        let urlSession = URLSession.shared
        

        do {
   
            let (data, _) = try await urlSession.data(for: request)
            
            
            print(String(data: data, encoding: .utf8)!)
            
        
            let decodedSearchResult = try JSONDecoder().decode(SearchResult.self, from: data)
            
            
            foundMovies = decodedSearchResult.results
            
        } catch {
            
            
            print("Could not retrieve / decode JSON from endpoint.")
            print(error)
            
        }
        
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(favourites: .constant([testMovie]))
    }
}
