//
//  ContentView.swift
//  PeaveyIndustries
//
//  Created by Michael Salton on 2022-07-22.
//

import SwiftUI

struct ImageOverlay: View {
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width: 3, height: 132)
                .position(x: 332, y: 184)
        }
            
    }
}

struct ContentView: View {
    
    @State private var isZoomed = false
    private var listOfBins = binList
    @State var searchText = ""
    
    var body: some View {
        VStack {
            Image("map")
                .resizable()
                .scaledToFit()
                .position(x: 195, y: 175)
                .overlay(ImageOverlay(), alignment: .bottomTrailing)
            Spacer()
        }
        
        NavigationView {
            List {
                ForEach(bins, id: \.self) { bin in
                    HStack {
                        Text(bin.capitalized)
                            .textCase(.uppercase)
                        Spacer()
                        Image(systemName: "figure.walk")
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Bins")
        }
        
        
        
    }
    

    
    
    
    var bins: [String] {
        let upBins = listOfBins.map {$0.uppercased()}
        
        return searchText == "" ? upBins : upBins.filter{
            $0.contains(searchText.uppercased())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

