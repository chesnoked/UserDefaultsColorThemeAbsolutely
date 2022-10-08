//
//  CartView.swift
//  ForPeople
//
//  Created by Evgeniy Safin on 03.10.2022.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack {
            Text("Cart")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
