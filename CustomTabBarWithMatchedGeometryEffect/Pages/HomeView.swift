//
//  HomeView.swift
//  ForPeople
//
//  Created by Evgeniy Safin on 03.10.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Text("Home")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
