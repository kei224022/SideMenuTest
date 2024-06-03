//
//  NewsView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

struct NewsView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        TabItemView(presentSideMenu: $presentSideMenu, title: "NewsView")
                    .padding(.horizontal, 24)
    }
}

#Preview {
    NewsView(presentSideMenu: .constant(false))
}
