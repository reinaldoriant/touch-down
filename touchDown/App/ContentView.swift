//
//  ContentView.swift
//  touchDown
//
//  Created by TI Digital on 08/07/21.
//

import SwiftUI

struct ContentView: View {
    // MARK : - Properties
    
    // MARK : - Body
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
