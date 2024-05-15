//
//  InsetGalleryView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 15/05/24.
//

import SwiftUI

struct InsetGalleryView: View {
    var animal: Animal
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//#Preview {
//    InsetGalleryView()
//}


struct InsetGalleryView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            // .previewLayout(.sizeThatFits)
                .padding()
        
    }
}
