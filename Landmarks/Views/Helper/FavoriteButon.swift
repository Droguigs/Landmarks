//
//  FavoriteButon.swift
//  Landmarks
//
//  Created by Douglas Schiavi on 01/06/21.
//

import SwiftUI

struct FavoriteButon: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButon_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButon(isSet: .constant(true))
    }
}
