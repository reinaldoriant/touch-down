//
//  NavigationBarDetailView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK : - Property
    
    @EnvironmentObject var shop:Shop
    
    // MARK : - Body
    var body: some View {
        HStack{
            Button(action:{
                    withAnimation(.easeIn){
                        feedback.impactOccurred()
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                    }} , label: {
                        Image(systemName: "chevron.left")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                    })
            
            Spacer()
            
            Button(action:{} , label: {
                Image(systemName: "cart")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })
            
        }//:HStack
    }
}
// MARK : - Preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
