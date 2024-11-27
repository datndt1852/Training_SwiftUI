//
//  SwiftUIView.swift
//  Training_SwiftUI
//
//  Created by Tien Dat on 27/11/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var count = 5
    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Text("Count")
                Spacer()
                HStack {
                    Button(action: {
                        if count > 0 { count -= 1 }
                    }) {
                        Image(systemName: "minus")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                    Rectangle()
                        .frame(width: 2, height: 18)
                        .foregroundColor(.gray)
                        .opacity(0.3)
                    Button(action: {
                        count += 1
                    }) {
                        Image(systemName: "plus")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal,10)
                .padding(.vertical,6)
                .background(Color(UIColor.lightGray).opacity(0.3))
                .cornerRadius(8)
            }.padding(.horizontal, 24)
            ZStack(alignment: .topTrailing) {
                Text("Hello, World!")
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.gray)
                    .cornerRadius(5)
                    .badge(count)
                if count > 0 {
                    Text("\(count)")
                        .font(.caption)
                        .foregroundColor(.black)
                        .padding(6)
                        .background(Circle().fill(Color.red))
                        .offset(x:10, y: -15)
                }
            }
        }
        .padding()
    }
}

#Preview {
    SwiftUIView()
}
