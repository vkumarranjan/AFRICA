//
//  AnimalGridItemView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 17/05/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//#Preview {
//    AnimalGridItemView()
//}


struct AnimalGridItemView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
      static var previews: some View {
          AnimalGridItemView(animal: animal[0])
               .previewLayout(.sizeThatFits)
                  .padding()
          
      }
  }
