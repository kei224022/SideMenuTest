//
//  PostView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

struct PostView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        TabItemView(presentSideMenu: $presentSideMenu, title: "PostView")
                    .padding(.horizontal, 24)
    }
}

#Preview {
    PostView(presentSideMenu: .constant(false))
}
