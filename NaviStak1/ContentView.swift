//
//  ContentView.swift
//  NaviStak1
//
//  Created by 森田晋 on 2022/10/30.
//

import SwiftUI

struct ContentView: View {
//    @State var parks = ["1tyoume","2tyoume","3tyoume"]
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)
                NavigationLink("cyan", value: Color.cyan)
                NavigationLink("indigo", value: Color.indigo)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color)
            }
            .navigationTitle("Colors")
        }
    }
}
struct ColorDetail:View {
    var color: Color
    var body: some View {
        ZStack{
            color.navigationTitle(color.description)
            Text(color.description)
                .font(.largeTitle).foregroundColor(.white)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
