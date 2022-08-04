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
    @State var tapText = ""
    
    var body: some View {
        // MAP
        VStack {
            ZoomableScrollView {
                GeometryReader { metrics in
                    Image("map")
                        .resizable()
                        .scaledToFit()
                        .overlay(ZStack {

                            // AP
                            if (tapText.prefix(3) == "AP1" || searchText.prefix(3) == "AP1") {
                                AP1()
                            }
                            
                            else if (tapText.prefix(3) == "AP2" || searchText.prefix(3) == "AP2") {
                                AP2()
                                
                            }
                            
                            else if (tapText.prefix(3) == "AP3" || searchText.prefix(3) == "AP3") {
                                AP3()
                                
                            }
                            
                            else if (tapText.prefix(3) == "AP4" || searchText.prefix(3) == "AP4") {
                                AP4()
                                
                            }
                            
                            else if (tapText.prefix(3) == "AP5" || searchText.prefix(3) == "AP5") {
                                AP5()
                                
                            }
                            
                            else if (tapText.prefix(3) == "AP8" || searchText.prefix(3) == "AP8") {
                                AP8()
                                
                            }
                            
                            // BP
                            else if (tapText.prefix(3) == "BP2" || searchText.prefix(3) == "BP2") {
                                BP2()
                                
                            }
                            
                            else if (tapText.prefix(3) == "BP3" || searchText.prefix(3) == "BP3") {
                                BP3()
                                
                            }
                            
                            else if (tapText.prefix(3) == "BP4" || searchText.prefix(3) == "BP4") {
                                BP4()
                                
                            }
                            
                            // CP
                            else if (tapText.prefix(3) == "CP3" || searchText.prefix(3) == "CP3") {
                                CP3()
                                
                            }
                            
                            else if (tapText.prefix(3) == "CP4" || searchText.prefix(3) == "CP4") {
                                CP4()
                                
                            }
                            
                            else if (tapText.prefix(3) == "CP6" || searchText.prefix(3) == "CP6") {
                                CP6()
                                
                            }
                            
                            // TY
                            else if (tapText.prefix(3) == "TY1" || searchText.prefix(3) == "TY1") {
                                TY1()
                                
                            }
                            
                            else if (tapText.prefix(3) == "TY2" || searchText.prefix(3) == "TY2") {
                                TY2()
                                
                            }
                            
                            else if (tapText.prefix(3) == "TY3" || searchText.prefix(3) == "TY3") {
                                TY3()
                                
                            }
                            
                            else if (tapText.prefix(3) == "TY4" || searchText.prefix(3) == "TY4") {
                                TY4()
                                
                            }
                            
                            // E
                            else if (tapText.prefix(2) == "EA" || searchText.prefix(2) == "EA") {
                                EA()
                                
                            }
                            
                            else if (tapText.prefix(2) == "EB" || searchText.prefix(2) == "EB") {
                                EB()
                                
                            }
                            
                            // TY
                            else if (tapText.prefix(2) == "EC" || searchText.prefix(2) == "EC") {
                                EC()
                                
                            }
                            
                            else if (tapText.prefix(2) == "ED" || searchText.prefix(2) == "ED") {
                                ED()
                                
                            }
                            
                            else if (tapText.prefix(2) == "EE" || searchText.prefix(2) == "EE") {
                                EE()
                                
                            }
                            
                            else if (tapText.prefix(2) == "EF" || searchText.prefix(2) == "EF") {
                                EF()
                                
                            }
                            
                            else if (tapText.prefix(2) == "EG" || searchText.prefix(2) == "EG") {
                                EG()
                                
                            }
                            
                            else if (tapText.prefix(2) == "EH" || searchText.prefix(2) == "EH") {
                                EH()
                                
                            }
                            
                            // TY
                            else if (tapText.prefix(2) == "EI" || searchText.prefix(2) == "EI") {
                                EI()
                                
                            }
                            
                            else if (tapText.prefix(3) == "EJ" || searchText.prefix(3) == "EJ") {
                                EJ()
                                
                            }
                            
                            else if (tapText.prefix(3) == "EK" || searchText.prefix(3) == "EK") {
                                EK()
                                
                            }
                            
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
            }
        }
        
        NavigationView {
            List {
                ForEach(bins, id: \.self) { bin in
                    HStack {
                        Text(bin.capitalized)
                            .textCase(.uppercase)
                        Spacer()
                        Image(systemName: "shippingbox")
                            .foregroundColor(Color.blue)
                    }
                    .contentShape(Rectangle())
                    .frame(width: 300, height: 8)
                    .onTapGesture{
                        UIApplication.shared.endEditing()
                        tapText = bin
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
           Text("AP1")
               .font(.title)
               .background(.black)
               .foregroundColor(.white)
               .frame(width: 1000, height: 1000)
               .position(x: 240, y: 330)
         Rectangle()
              .fill(.green)
              .frame(width: 7, height: 153)
              .position(x: 328.9, y: 180.4)
           Rectangle()
                .fill(.green)
                .frame(width: 7, height: 12)
                .position(x: 328.9, y: 270.4)
           Rectangle()
                .fill(.green)
                .frame(width: 4, height: 76)
                .position(x: 339.5, y: 141.5)
           Rectangle()
                .fill(.green)
                .frame(width: 4, height: 76.4)
                .position(x: 339.5, y: 238)
       }
   }
    struct AP2: View{
        var body: some View{
            Text("AP2")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 12)
                 .position(x: 311.5, y: 270.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 311.5, y: 180.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 321, y: 180.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 12)
                 .position(x: 321, y: 270.4)
        }
    }
    struct AP3: View{
        var body: some View{
            Text("AP3")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 293.34, y: 180.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 12)
                 .position(x: 293.34, y: 270.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 303.8, y: 180.4)
              Rectangle()
                   .fill(.green)
                   .frame(width: 7, height: 12)
                   .position(x: 303.8, y: 270.4)
        }
    }
    struct AP4: View{
        var body: some View{
            Text("AP4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 274.7, y: 180.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 12)
                 .position(x: 274.7, y: 270.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 285.67, y: 180.4)
              Rectangle()
                   .fill(.green)
                   .frame(width: 7, height: 12)
                   .position(x: 285.67, y: 270.4)
        }
    }
    struct AP5: View{
        var body: some View{
            Text("AP5")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 5, height: 153)
                 .position(x: 258, y: 180.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 5, height: 12)
                 .position(x: 258, y: 270.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 7, height: 153)
                 .position(x: 267, y: 180.4)
              Rectangle()
                   .fill(.green)
                   .frame(width: 7, height: 12)
                   .position(x: 267, y: 270.4)
        }
    }
    struct AP8: View{
        var body: some View{
            Text("AP8")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 29.5, height: 32)
                 .position(x: 296.2, y: 47)
        }
    }
    struct BP2: View{
        var body: some View{
            Text("BP2")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4, height: 132)
                 .position(x: 221.4, y: 191)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4, height: 132)
                 .position(x: 228.6, y: 191)
        }
    }
    struct BP3: View{
        var body: some View{
            Text("BP3")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4, height: 132)
                 .position(x: 233.2, y: 191)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4, height: 132)
                 .position(x: 239.15, y: 191)
        }
    }
    struct BP4: View{
        var body: some View{
            Text("BP4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4, height: 132)
                 .position(x: 243.9, y: 191)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4.75, height: 146)
                 .position(x: 250.8, y: 184)
        }
    }
    struct CP3: View{
        var body: some View{
            Text("CP3")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 5, height: 132)
                 .position(x: 175, y: 191)
            Rectangle()
                 .fill(.green)
                 .frame(width: 2.7, height: 132)
                 .position(x: 168, y: 191)
        }
    }
    struct CP4: View{
        var body: some View{
            Text("CP4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 2.7, height: 132)
                 .position(x: 164.5, y: 191)
            Rectangle()
                 .fill(.green)
                 .frame(width: 2.7, height: 153)
                 .position(x: 158.5, y: 180.4)
        }
    }
    struct CP6: View{
        var body: some View{
            Text("CP6")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 9, height: 12)
                 .position(x: 241.1, y: 270.4)
            Rectangle()
                 .fill(.green)
                 .frame(width: 9, height: 12)
                 .position(x: 230.9, y: 270.3)
            Rectangle()
                 .fill(.green)
                 .frame(width: 9, height: 12)
                 .position(x: 219, y: 270.3)
        }
    }
    struct TY1: View{
        var body: some View{
            Text("TY1")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 126.5)
                 .position(x: 128, y: 187.8)
            Rectangle()
                 .fill(.green)
                 .frame(width: 4, height: 132)
                 .position(x: 122, y: 191)
        }
    }
    struct TY2: View{
        var body: some View{
            Text("TY2")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 126.5)
                 .position(x: 131.5, y: 187.8)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 151)
                 .position(x: 137.1, y: 179.7)
        }
    }
    struct TY3: View{
        var body: some View{
            Text("TY3")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 151)
                 .position(x: 140.5, y: 179.9)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 151)
                 .position(x: 146.5, y: 179.9)
        }
    }
    struct TY4: View{
        var body: some View{
            Text("TY4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 149)
                 .position(x: 155, y: 178)
            Rectangle()
                 .fill(.green)
                 .frame(width: 3, height: 151)
                 .position(x: 149.7, y: 179.6)
        }
    }
    struct EA: View{
        var body: some View{
            Text("EA")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 17, height: 1.3)
                .position(x: 64.57, y: 142.4)
        }
    }
    struct EB: View{
        var body: some View{
            Text("EB")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 17, height: 3)
                .position(x: 64.57, y: 146.5)
            Rectangle()
                .fill(.green)
                .frame(width: 27.2, height: 3)
                .position(x: 95.7, y: 146.5)
        }
    }
    struct EC: View{
        var body: some View{
            Text("EC")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct ED: View{
        var body: some View{
            Text("ED")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EE: View{
        var body: some View{
            Text("EE")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EF: View{
        var body: some View{
            Text("EF")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EG: View{
        var body: some View{
            Text("EG")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EH: View{
        var body: some View{
            Text("EH")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EI: View{
        var body: some View{
            Text("EI")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EJ: View{
        var body: some View{
            Text("EJ")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct EK: View{
        var body: some View{
            Text("EK")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FA: View{
        var body: some View{
            Text("FA")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FB: View{
        var body: some View{
            Text("FB")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FC: View{
        var body: some View{
            Text("FC")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FD: View{
        var body: some View{
            Text("FD")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FE: View{
        var body: some View{
            Text("FE")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FF: View{
        var body: some View{
            Text("FF")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FG: View{
        var body: some View{
            Text("FG")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct FH: View{
        var body: some View{
            Text("FH")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RA: View{
        var body: some View{
            Text("RA")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RB: View{
        var body: some View{
            Text("RB")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RC: View{
        var body: some View{
            Text("RC")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RD: View{
        var body: some View{
            Text("RD")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RE: View{
        var body: some View{
            Text("RE")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RF: View{
        var body: some View{
            Text("RF")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct RG: View{
        var body: some View{
            Text("RG")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG1: View{
        var body: some View{
            Text("TG1")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG2: View{
        var body: some View{
            Text("TG2")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG3: View{
        var body: some View{
            Text("TG3")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TG4: View{
        var body: some View{
            Text("TG4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TL: View{
        var body: some View{
            Text("TL")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TK: View{
        var body: some View{
            Text("TK")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TM: View{
        var body: some View{
            Text("TM")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TJ1: View{
        var body: some View{
            Text("TJ1")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TJ2: View{
        var body: some View{
            Text("TJ2")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TJ3: View{
        var body: some View{
            Text("TJ3")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct ONER: View{
        var body: some View{
            Text("1R")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct TWOR: View{
        var body: some View{
            Text("2R")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct THREER: View{
        var body: some View{
            Text("3R")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct E4: View{
        var body: some View{
            Text("E4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct C4: View{
        var body: some View{
            Text("C4")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct CK: View{
        var body: some View{
            Text("CK")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct WR: View{
        var body: some View{
            Text("WR")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct DL: View{
        var body: some View{
            Text("DL")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct YA: View{
        var body: some View{
            Text("YA")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .position(x: 200, y: 200)
        }
    }
    struct LA: View{
        var body: some View{
            Text("LA (ECOM)")
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .frame(width: 1000, height: 1000)
                .position(x: 240, y: 330)
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

struct ZoomableScrollView<Content: View>: UIViewRepresentable {
  private var content: Content

  init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }

  func makeUIView(context: Context) -> UIScrollView {
    // set up the UIScrollView
    let scrollView = UIScrollView()
    scrollView.delegate = context.coordinator  // for viewForZooming(in:)
    scrollView.maximumZoomScale = 20
    scrollView.minimumZoomScale = 1
    scrollView.bouncesZoom = true

    // create a UIHostingController to hold our SwiftUI content
    let hostedView = context.coordinator.hostingController.view!
    hostedView.translatesAutoresizingMaskIntoConstraints = true
    hostedView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    hostedView.frame = scrollView.bounds
    scrollView.addSubview(hostedView)

    return scrollView
  }

  func makeCoordinator() -> Coordinator {
    return Coordinator(hostingController: UIHostingController(rootView: self.content))
  }

  func updateUIView(_ uiView: UIScrollView, context: Context) {
    // update the hosting controller's SwiftUI content
    context.coordinator.hostingController.rootView = self.content
    assert(context.coordinator.hostingController.view.superview == uiView)
  }

  // MARK: - Coordinator

  class Coordinator: NSObject, UIScrollViewDelegate {
    var hostingController: UIHostingController<Content>

    init(hostingController: UIHostingController<Content>) {
      self.hostingController = hostingController
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
      return hostingController.view
    }
  }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
