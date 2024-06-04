//
//  SideMenuView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//
import SwiftUI

struct SideMenuView: View {
    @Binding var isMenuVisible: Bool

    var body: some View {
        Spacer()
        VStack(alignment: .leading) {
            Button(action: {
                withAnimation {
                    isMenuVisible = false
                }
            }) {
                Text("Close Menu")
                    .padding()
            }

            // メニューの項目を追加
            Text("Menu Item 1")
                .padding()
            Text("Menu Item 2")
                .padding()

            Spacer()
        }
        .frame(maxWidth: 250, alignment: .leading)
        //.frame(widtth: geometry.size.width / 2, height: 50)
        .background(Color.white.opacity(0.9))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    
    SideMenuView(isMenuVisible: .constant(true))
}
