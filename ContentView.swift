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
        
        // SEARCH FOR BIN
        NavigationView {
            
            // MAP
            VStack {
                Image("map")
                    .resizable()
                    .scaledToFit()
                    .position(x: 195, y: 175)
                    .overlay(ImageOverlay(), alignment: .bottomTrailing)
                Spacer()
            }
            
            struct ImageOverlay: View{
                // DRAW BIN LOCATION FUNCTION
                func drawBox(width: CGFloat, height: CGFloat, x: CGFloat, y: CGFloat) -> ZStack<Rectangle> {
                        var output: ZStack<Rectangle> {
                            ZStack {
                            Rectangle()
                                .fill(.red)
                                .frame(width: width, height: height)
                                .position(x: x, y: y) as! Rectangle
                            }
                    }
                    return output
                }
            }
            
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
                drawBox(width: 50, height: 50, x: 50, y: 50)
            }
        }
    }
            
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
