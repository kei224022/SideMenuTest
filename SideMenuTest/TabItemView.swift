//
//  TabItemView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

/// 各タブアイテムのView
struct TabItemView: View {
    @Binding var presentSideMenu: Bool
    let title: String

    var body: some View {
        VStack {
            HStack {
                Button {
                    presentSideMenu.toggle()
                } label: {
                    Image(systemName: "list.bullet.indent")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.black)
                        //.font(.system(size: 16, weight: .medium))
                }
                Spacer()
            }
            Spacer()
            Text(title)
                .font(.system(size: 32, weight: .medium))
            Spacer()
        }
    }
}

#Preview {
    TabItemView(presentSideMenu: .constant(false), title: "Test")
}
