//
//  ContentView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImgageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
}
