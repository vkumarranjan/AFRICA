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
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

//#Preview {
//    InsetGalleryView()
//}


struct InsetGalleryView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
             .previewLayout(.sizeThatFits)
                .padding()
        
    }
}
