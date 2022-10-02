//
//  ProfileView.swift
//  ForPeople
//
//  Created by Evgeniy Safin on 03.10.2022.
//

import SwiftUI

struct ProfileView: View {
    @State private var parentColor: Color = Color.palette.parent
    @State private var childColor: Color = Color.palette.child
    // I replaced 'private let' on '@State private var' property for real-time update all views
    @State private var myColorTheme: MyColorTheme = MyColorTheme()
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // nav bar
                self.navBar
                .padding(.horizontal)
                .padding([.horizontal, .vertical])
                
                Spacer()
            }
            Text("Profile")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
    
    // MARK: NavBar
    private var navBar: some View {
        HStack(spacing: 0) {
            // parent color picker
            ColorPicker(selection: $parentColor, supportsOpacity: true, label: { })
                .onChange(of: parentColor) { newParentColor in
                    myColorTheme.saveColor(color: newParentColor, forKey: "parent_color")
                }
            Spacer()
            // button change to default color theme
            Button(action: {
                myColorTheme.defaultColorTheme()
            }, label: {
                Image(systemName: "eyes.inverse")
                    .foregroundColor(Color.palette.child)
            })
            Spacer()
            // child color picker
            ColorPicker(selection: $childColor, supportsOpacity: true, label: { })
                .onChange(of: childColor) { newChildColor in
                    myColorTheme.saveColor(color: newChildColor, forKey: "child_color")
                }
        }
        .labelsHidden()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
