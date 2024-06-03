//
//  ContentView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//

import SwiftUI

struct ContentView: View {
    /// メニューの開閉
    @State var isMenuOpen = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                Text("ContentView")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                /// isMenuOpenの変化にアニメーションをつける
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    isMenuOpen.toggle()
                                }
                            } label: {
                                Image(systemName: "list.bullet.indent")
                            }
                        }
                    }
            }
            //MenuView(isOpen: $isMenuOpen)
            if isMenuOpen {
                            MenuView(isOpen: $isMenuOpen)
                                .transition(.move(edge: .leading))
                        }
        }
    }
}

#Preview {
    ContentView()
}
