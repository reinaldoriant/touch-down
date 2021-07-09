//
//  CategoryItemView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK : - Property
    
    let category: Category
    
    // MARK : - Body
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
           HStack {
            Image(category.image)
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
            
            Text(category.name.uppercased())
                .fontWeight(.light)
                .foregroundColor(.gray)
            
            Spacer()
            }//:HSTACk
           .padding()
           .background(Color.white.cornerRadius(12))
           .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
        })//: Button
    }
}
// MARK : - Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
