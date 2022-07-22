//
//  ContentView.swift
//  SearchBar-SwiftUI
//
//  Created by Mitya Kim on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm: String = ""
    
    let names = ["Axa", "Son", "Batka", "What", "Wallete", "Dog", "Ana", "Cat"]
    
    var body: some View {
        
        List {
            
            SearchBar(text: $searchTerm)
            
            ForEach(self.names.filter {
                self.searchTerm.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchTerm)
            }, id: \.self) { name in
                Text(name)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
