//
//  MainTabView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

//import SwiftUI
//
//struct MainTabView: View {
//    @State var presentSideMenu = false
//    @State var selectedSideMenuTab = 0
//
//    var body: some View {
//        ZStack {
//            TabView(selection: $selectedSideMenuTab) {
//                HomeView(presentSideMenu: $presentSideMenu)
//                    .tag(0)
//                PostView(presentSideMenu: $presentSideMenu)
//                    .tag(1)
//                NewsView(presentSideMenu: $presentSideMenu)
//                    .tag(2)
//                SettingView(presentSideMenu: $presentSideMenu)
//                    .tag(3)
//            }
//            SideMenu(isShowing: $presentSideMenu, content: AnyView(SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)))
//        }
//    }
//}
//
//#Preview {
//    MainTabView()
//}