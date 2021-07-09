//
//  NavigationBarDetailView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK : - Property
    
    // MARK : - Body
    var body: some View {
        HStack{
            Button(action:{} , label: {
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
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
