//
//  ProductDetailView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK : - Property
    @EnvironmentObject var shop:Shop
    
   // MARK : - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding(.horizontal)
            //detail top
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //detail bottom
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                //rating+sizes
                RatingSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                //descrip
                ScrollView(.vertical,showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                })//:Scroll
                //quantity+fav
                QuantityDetailView()
                    .padding(.vertical, 10)
                // ad to cart
                AddToCartDetailView()
                    .padding(.bottom,20)
            })//: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
        })//:Vstack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)).ignoresSafeArea(.all,edges: .all)
    }
}

// MARK : - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
        
    }
}
