//
//  TabbarView.swift
//  AttentiveScroll
//
//  Created by Nikita Koruts on 01.03.2024.
//

import SwiftUI

struct TabbarView: View {
    @State private var rectangleHeight: CGFloat = 50.0
    
    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack(spacing: Constants.spacing) {
                        ForEach(1..<101) { id in
                            Text(id.description)
                                .font(Constants.textFont)
                                .foregroundColor(
                                    Color(uiColor: .systemGray2))
                            
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .safeAreaInset(edge: .bottom) {
                    Rectangle()
                        .fill(Constants.rectangleColor)
                        .frame(height: rectangleHeight)
                }
            }
            .tabItem {
                Label("First", systemImage: "star")
            }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}

// MARK: - Constants
extension TabbarView {
    private enum Constants {
        static let textFont: Font = .system(size: 24, design: .monospaced)
        static let spacing: CGFloat = 8
        static let rectangleColor: Color = .red.opacity(0.75)
    }
}
