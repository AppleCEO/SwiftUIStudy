//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
            HStack {
                Text("둥근 모양").font(.title)
                Spacer()
            }
            ZStack {
                Rectangle().frame(height: 10)
                HStack {
                    Circle().fill(Color.yellow)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.orange)
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray)
                }
            }
            HStack {
                Text("각진 모양").font(.title)
                Spacer()
            }
            ZStack {
                Rectangle().frame(height: 10)
                HStack {
                    Color.red
                    Rectangle().fill(Color.blue)
                    RoundedRectangle(cornerRadius: 0).fill(Color.purple)
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
