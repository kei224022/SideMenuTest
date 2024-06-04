//
//  ContentView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    @State private var isMenuVisible = false
    
    var body: some View {
        ZStack{
            NavigationStack{
                TabView(selection: $selectedTag){
                    SettingView()
                        .tabItem{
                            Label("Device", systemImage: "iphone.radiowaves.left.and.right")
                        }
                        .tag(1)
                    
                    MapsView()
                        .tabItem{
                            Label("UWB", systemImage: "airtag.radiowaves.forward")
                        }
                        .tag(2)
                }
                //.navigationTitle("UWB Indoor Navi")
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Button(action: {withAnimation{
                            isMenuVisible.toggle()
                        }}){
                            Image(systemName:  "list.bullet.indent")
                                .resizable()
                                .scaledToFit()
                            //.frame(width: 50, height: 50)
                        }
                    }
                    
                    ToolbarItem(){
                        Text("UWB AR Indoor Navi")
                    }
                    
                    ToolbarItem(placement: .confirmationAction){
                        Button(action: {}){
                            Image(systemName: "pencil.and.scribble")
                                .resizable()
                                .scaledToFit()
                            
                        }
                    }
                }
            }
            // サイドメニュー
                            if isMenuVisible {
                                SideMenuView(isMenuVisible: $isMenuVisible)
                                    .transition(.move(edge: .leading))
                                    .zIndex(1) // メインコンテンツの上に表示
                            }
    }
    }
}

//#Preview {
//    @State var presentSideMenu = false
//    ContentView(presentSideMenu: $presentSideMenu)
//}
