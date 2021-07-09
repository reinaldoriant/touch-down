//
//  ProductDetailView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK : - Property
    
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
            TopPartDetailVIew()
                .padding(.horizontal)
                .zIndex(1)
            //detail bottom
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                //rating+sizes
            
                //descrip
                ScrollView(.vertical,showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                })//:Scroll
                //quantity+fav
                // ad to cart
                Spacer()
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
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)).ignoresSafeArea(.all,edges: .all)
    }
}

// MARK : - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
