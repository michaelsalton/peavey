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
                    if (searchText.elementsEqual("AP1")) {
                        AP1()
                        if(searchText.elementsEqual("AP12")) {
                            AP12()
                        }
                        
                        
                    }
                    
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
                    else if (searchText.elementsEqual("CP6")) { CP6() } // CP6
                    
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
                    
                    // F
                    else if (searchText.elementsEqual("FA")) { FA() }
                    else if (searchText.elementsEqual("FB")) { FB() }
                    else if (searchText.elementsEqual("FC")) { FC() }
                    else if (searchText.elementsEqual("FD")) { FD() }
                    else if (searchText.elementsEqual("FE")) { FE() }
                    else if (searchText.elementsEqual("FF")) { FF() }
                    else if (searchText.elementsEqual("FG")) { FG() }
                    else if (searchText.elementsEqual("FH")) { FH() }
                    
                    // R, TG, TL, TM, TJ, _R (REPACK)
                    else if (searchText.elementsEqual("RA")) { RA() }
                    else if (searchText.elementsEqual("RB")) { RB() }
                    else if (searchText.elementsEqual("RC")) { RC() }
                    else if (searchText.elementsEqual("RD")) { RD() }
                    else if (searchText.elementsEqual("RE")) { RE() }
                    else if (searchText.elementsEqual("RF")) { RF() }
                    else if (searchText.elementsEqual("RG")) { RG() }
                    else if (searchText.elementsEqual("TG1")) { TG1() }
                    else if (searchText.elementsEqual("TG2")) { TG2() }
                    else if (searchText.elementsEqual("TG3")) { TG3() }
                    else if (searchText.elementsEqual("TG4")) { TG4() }
                    else if (searchText.elementsEqual("TL")) { TL() }
                    else if (searchText.elementsEqual("TM")) { TM() }
                    else if (searchText.elementsEqual("TK")) { TK() }
                    else if (searchText.elementsEqual("TJ1")) { TJ1() }
                    else if (searchText.elementsEqual("TJ2")) { TJ2() }
                    else if (searchText.elementsEqual("TJ3")) { TJ3() }
                    else if (searchText.elementsEqual("1R")) { ONER() }
                    else if (searchText.elementsEqual("2R")) { TWOR() }
                    else if (searchText.elementsEqual("3R")) { THREER() }
                    
                    // OTHERS
                    else if (searchText.elementsEqual("LA")) { LA() }
                    else if (searchText.elementsEqual("YA")) { YA() }
                    else if (searchText.elementsEqual("E4")) { E4() }
                    else if (searchText.elementsEqual("C4")) { C4() }
                    else if (searchText.elementsEqual("CK")) { CK() }
                    else if (searchText.elementsEqual("DL")) { DL() }
                    
                    
                    
                    
                    
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
    struct AP12: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
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
    struct CP6: View{
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
    struct FA: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FB: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FC: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FD: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FE: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FF: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FG: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FH: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RA: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RB: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RC: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RD: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RE: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RF: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RG: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG1: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG2: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG3: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TL: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TK: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TM: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TJ1: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TJ2: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TJ3: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct ONER: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TWOR: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct THREER: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct E4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct C4: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct CK: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct WR: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct DL: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct YA: View{
        var body: some View{
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct LA: View{
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
