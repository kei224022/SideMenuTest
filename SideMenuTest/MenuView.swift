//
//  MenuView.swift
//  SideMenuTest
//
//  Created by member on 2024/06/03.
//
//
//import SwiftUI
//
//struct MenuView: View {
//    /// メニュー開閉
//    @Binding var isOpen: Bool
//    /// iPhoneの幅
//    private let maxWidth = UIScreen.main.bounds.width
//    
//    var body: some View {
//        NavigationView{
//            ZStack {
//                /// isOpenで背景が透明な黒になる
//                /// この黒をタップすると閉じる
//                Color.black
//                    .edgesIgnoringSafeArea(.all)
//                    .opacity(isOpen ? 0.7 : 0)
//                    .onTapGesture {
//                        /// isOpenの変化にアニメーションをつける
//                        withAnimation(.easeInOut(duration: 0.3)) {
//                            isOpen.toggle()
//                        }
//                    }
//                ZStack {
//                    List {
//                        /// 注意：増やしすぎて縦スクロールになると使いづらくなる
//                        Section {
//                            /// ここをNavigationLinkにするとそれっぽい
//                            NavigationLink(destination: SettingView()){
//                                HStack {
//                                    Image(systemName: "gearshape")
//                                    Text("設定")
//                                }
//                            }
//                            NavigationLink(destination: ApplicationInfoView()){
//                                HStack {
//                                    Image(systemName: "info.circle")
//                                    //Text("アプリケーション情報")
//                                    AppInfoView()
//                                }
//                            }
//                        }
//                    }
//                    /// 開発者とか入れるとそれっぽい
//                    VStack {
//                        Spacer()
//                        Text("developed by")
//                            .font(.footnote)
//                        Text("Cafe")
//                            .font(.footnote)
//                    }
//                    .foregroundColor(.secondary)
//                    .padding()
//                }
//                /// 画面幅の1/4だけ右側を開ける
//                .padding(.trailing, maxWidth/4)
//                /// isOpenで、そのままの位置か、画面幅だけ右にズレるかを決める
//                .offset(x: isOpen ? 0 : -maxWidth)
//            }
//        }
//    }
//}
//
//struct AppInfoView: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text("アプリケーション情報")
//                .font(.headline)
//            Text("バージョン: 1.0.0")
//                .font(.subheadline)
//            Text("更新日: 2024年6月3日")
//                .font(.subheadline)
//        }
//        .padding()
//    }
//}
//
////#Preview {
////    @State var isOpen = true
////    MenuView(isOpen: $isOpen)
////}
//struct MenuView_Previews: PreviewProvider {
//    @State static var isOpen = true
//    
//    static var previews: some View {
//        MenuView(isOpen: $isOpen)
//    }
//}
