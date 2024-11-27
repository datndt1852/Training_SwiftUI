//
//  Challenge2.swift
//  Training_SwiftUI
//
//  Created by Tien Dat on 27/11/24.
//

import SwiftUI

struct Challenge2: View {
    @State private var level: Int = 0
    
    var body: some View {
        VStack {
            BarIndicator(level: $level)
            Spacer().frame(height: 20)
            ButtonControl(level: $level)
        }
        .padding()
    }
}

struct BarIndicator: View {
    @Binding var level: Int
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            ForEach(0..<6) { index in
                RoundedRectangle(cornerRadius: 5)
                    .fill(colorForLevel(index))
                    .frame(width: 20, height: CGFloat(20 + index * 10))
                    .opacity(index < level ? 1.0 : 0.2)
                    .animation(.easeInOut(duration: 0.5).delay(Double(index) * 0.04), value: level)
                    .onTapGesture {
                        withAnimation {
                            level = index + 1
                        }
                    }
            }
        }
    }
    
    private func colorForLevel(_ index: Int) -> Color {
        switch level {
        case 1...2:
            return index < level ? .red : Color.black.opacity(0.2)
        case 3...4:
            return index < level ? .yellow : Color.black.opacity(0.2)
        default:
            return index < level ? .green : Color.black.opacity(0.2)
        }
    }
}
struct ButtonControl: View {
    @Binding var level: Int
    
    var body: some View {
        HStack {
            Button(action: {
                if level > 0 { level -= 1 }
            }) {
                Image(systemName: "minus")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                    .background(
                        Circle()
                            .stroke(Color.red, lineWidth: 2)
                    )
            }
            
            Button(action: {
                if level < 6 { level += 1 }
            }) {
                Image(systemName: "plus")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.green)
                    .background(
                        Circle()
                            .stroke(Color.green, lineWidth: 2)
                    )
            }
        }
    }
}

#Preview {
    Challenge2()
}
