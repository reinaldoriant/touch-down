//
//  AddToCartDetailView.swift
//  touchDown
//
//  Created by TI Digital on 10/07/21.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
            Spacer()
        })
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue
        )
        ).clipShape(Capsule())
        
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
