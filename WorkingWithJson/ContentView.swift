//
//  ContentView.swift
//  WorkingWithJson
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var datas = ReadData()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(datas.languages) { item in
                        NavigationLink(destination: LanguageDetail(language: item)) {
                            Text(item.name)
                        }
                    }
                }
                .listStyle(.grouped)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
