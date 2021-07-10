//
//  HeaderDetailView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
            
        })//: Vstack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
