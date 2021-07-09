//
//  ProductItemView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct ProductItemView: View {
    // MARK : - Property
    
    let product:Product
    
    // MARK : - Body
    var body: some View {
        VStack (alignment: .leading, spacing: 6, content :{
            //Photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//:zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //Name
            Text(product.name).font(.title3).fontWeight(.black)
            
            //Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })//:Vstack
    }
}
// MARK : - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
            .previewDevice("iPhone 11")
    }
}
