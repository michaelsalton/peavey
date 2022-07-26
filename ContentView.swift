//
//  ContentView.swift
//  PeaveyIndustries
//
//  Created by Michael Salton on 2022-07-22.
//

import SwiftUI

struct ImageOverlay: View{
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 500, y: 350)
        }
    }
}

func drawBox(width: CGFloat, height: CGFloat, x: CGFloat, y: CGFloat) -> Rectangle {
    var output: Rectangle {
        Rectangle()
            .fill(.blue)
            .frame(width: width, height: height) as! Rectangle
            
    }
    return output
}

struct ContentView: View {
    
    private var listOfBins = binList
    @State var searchText = ""
    
    var body: some View {
        
        // MAP
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
            
            // CALULATE BOX SIZE AND LOCATION
            if searchText.elementsEqual("AP1") {
                
            }
        }
    }
         
    // DISPLAY LIST OF BINS AND SEARCH BAR
    var bins: [String] {
        let upBins = listOfBins.map {$0.uppercased()}
        return searchText == "" ? upBins : upBins.filter{
            $0.contains(searchText.uppercased())
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
