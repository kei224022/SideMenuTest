//
//  SettingView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

struct SettingView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        TabItemView(presentSideMenu: $presentSideMenu, title: "SettingView")
                    .padding(.horizontal, 24)
    }
}

#Preview {
    SettingView(presentSideMenu: .constant(false))
}
