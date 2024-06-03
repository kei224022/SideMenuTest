//
//  HomeView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

struct HomeView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        TabItemView(presentSideMenu: $presentSideMenu, title: "HomeView")
                    .padding(.horizontal, 24)
    }
}

#Preview {
    HomeView(presentSideMenu: .constant(false))
}
