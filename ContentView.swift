//
//  ContentView.swift
//  PeaveyIndustries
//
//  Created by Michael Salton on 2022-07-22.
//

import SwiftUI

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
                .overlay(ZStack {
                    
                    // AP
                    if (searchText.elementsEqual("AP1")) { AP1() }      // AP1
                    else if (searchText.elementsEqual("AP2")) { AP2() } // AP2
                    else if (searchText.elementsEqual("AP3")) { AP3() } // AP3
                    else if (searchText.elementsEqual("AP4")) { AP4() } // AP4
                    else if (searchText.elementsEqual("AP5")) { AP5() } // AP5
                    else if (searchText.elementsEqual("AP8")) { AP8() } // AP8
                    
                    // BP
                    else if (searchText.elementsEqual("BP2")) { BP2() } // BP2
                    else if (searchText.elementsEqual("BP3")) { BP3() } // BP3
                    else if (searchText.elementsEqual("BP4")) { BP4() } // BP4
                    
                    // CP
                    else if (searchText.elementsEqual("CP3")) { CP3() } // CP3
                    else if (searchText.elementsEqual("CP4")) { CP4() } // CP4
                    
                    // TY
                    else if (searchText.elementsEqual("TY1")) { TY1() } // TY1
                    else if (searchText.elementsEqual("TY2")) { TY2() } // TY2
                    else if (searchText.elementsEqual("TY3")) { TY3() } // TY3
                    else if (searchText.elementsEqual("TY4")) { TY4() } // TY4
                    
                    // E
                    else if (searchText.elementsEqual("EA")) { EA() } // EA
                    else if (searchText.elementsEqual("EB")) { EB() } // EB
                    else if (searchText.elementsEqual("EC")) { EC() } // EC
                    else if (searchText.elementsEqual("ED")) { ED() } // ED
                    else if (searchText.elementsEqual("EE")) { EE() } // EE
                    else if (searchText.elementsEqual("EF")) { EF() } // EF
                    else if (searchText.elementsEqual("EG")) { EG() } // EG
                    else if (searchText.elementsEqual("EH")) { EH() } // EH
                    else if (searchText.elementsEqual("EI")) { EI() } // EI
                    else if (searchText.elementsEqual("EJ")) { EJ() } // EJ
                    else if (searchText.elementsEqual("EK")) { EK() } // EK
                    
                    // R
                    
                    // OTHERS
                    
                    
                    
                    
                    
                }, alignment: .bottomTrailing)
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
    
    struct AP1: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 300)
        }
    }
    struct AP2: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 100, y: 300)
        }
    }
    struct AP3: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 300, y: 300)
        }
    }
    struct AP4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 100)
        }
    }
    struct AP5: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct AP8: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct BP2: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct BP3: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct BP4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct CP3: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct CP4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TY1: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TY2: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TY3: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TY4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EA: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EB: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EC: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct ED: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EE: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EF: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EG: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EH: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EI: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EJ: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EK: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
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
