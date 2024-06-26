//
//  ContentView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    @State var isGridViewActive = false
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImgageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }
                        }
                    } // List
                    
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { item in
                                NavigationLink(destination: AnimalDetailView(animal: item)){
                                    AnimalGridItemView(animal: item)
                                } //NavigationLink
                            } // ForEach
                        } // LazyVGrid
                        .padding(10)
                        .animation(.easeIn)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // List
                        Button(action: {
                            print("")
                            isGridViewActive = false
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary  : .accentColor)
                        }
                        
                        // Grid
                        Button(action: {
                            print("")
                            isGridViewActive = true
                        }) {
                            Image(systemName: "square.grid.2x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor  : .primary)

                        }
                    } // HStack
                } // ToolbarItem
            } // toolbar
        } // NavigationView
    } // body
}

#Preview {
    ContentView()
}
