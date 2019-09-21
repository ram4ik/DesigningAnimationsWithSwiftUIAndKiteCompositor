//
//  ContentView.swift
//  DesigningAnimationsWithSwiftUIAndKiteCompositor
//
//  Created by ramil on 21/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.red)
            .imageScale(.large)
            .scaleEffect(show ? 4 : 1)
            .animation(
                .interpolatingSpring(
                    mass: 0.7,
                    stiffness: 200,
                    damping: 10,
                    initialVelocity: 4
                ))
            .onTapGesture {

                self.show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
