//
//  HomeView.swift
//  Storage
//
//  Created by John Ye on 2022/7/20.
//

import SwiftUI

struct HomeView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection:$selection) {
            UnaryView()
                .tabItem {
                    Label("Unary", systemImage:"arrow.up.and.down")
                }
                .tag(0)
            ServerStreamView()
                .tabItem {
                    Label("ServerStreaming", systemImage:"arrow.down.to.line")
                }
                .tag(1)
            BidiStreamView()
                .tabItem {
                    Label("BidiStreaming", systemImage:"waveform")
                }
                .tag(2)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ServerStreamService())
            .environmentObject(BidiStreamService())
    }
}
