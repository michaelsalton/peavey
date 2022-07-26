//
//  ContentView.swift
//  PeaveyIndustries
//
//  Created by Michael Salton on 2022-07-22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var isZoomed = false
    
    private var listOfBins = binList
    @State var searchText = ""
    
    var body: some View {
        Image("map")
            .resizable()
            .aspectRatio(contentMode: isZoomed ? .fill : .fit).ignoresSafeArea(.all)
            .onTapGesture {
                withAnimation {
                    isZoomed.toggle()
                }
            }
            .scaledToFit()
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
        
        Rectangle()
            .fill(.green)
            .frame(width: 200, height: 200)
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
