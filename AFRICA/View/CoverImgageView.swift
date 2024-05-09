//
//  CoverImgageView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 09/05/24.
//

import SwiftUI

struct CoverImgageView: View {
    
// MARK: Properties
    var coverImages: [CoverImgage] = Bundle.main.decode("covers.json")
    
// MARK: Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            } // Loop
        } // : Tab
        .tabViewStyle(PageTabViewStyle())
    }
}



#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImgageView()
}
