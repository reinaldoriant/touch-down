//
//  QuantityDetailView.swift
//  touchDown
//
//  Created by TI Digital on 10/07/21.
//

import SwiftUI

struct QuantityDetailView: View {
    //MARK : - Property
    @State private var counter: Int = 0
    // MARK : - Body

    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            Button(action: {if counter > 0 {counter -= 1}}, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {if counter < 100 {counter += 1}}, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()

            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })//: HSTACK
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
