//
//  ContentView.swift
//  allAboutMeProject
//
//  Created by Lauren Ravury on 4/22/23.
//

import SwiftUI

struct ContentView: View {
    @State var funFacts = 0
    var body: some View {
        VStack {
            (Color.yellow)
            
            Label("All About Lauren Ravury", systemImage: "heart").font(.system(size: 20, weight: .bold))
            Image("chicagopicture").resizable() .aspectRatio(contentMode: .fit)
                .frame(width: 220, height: 150)
            Image("cubs").resizable() .aspectRatio(contentMode: .fit)
                .frame(width: 220, height: 250)
            Image("easter").resizable() .aspectRatio(contentMode: .fit)
                .frame(width: 170, height: 170, alignment: .center)
            Button(action: {
                self.funFacts += 1
            }, label: {
                Text("Tap to Learn More About Me!")
                    .font(.system(size: 16, weight: .bold))
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.teal,
                    lineWidth: 6))
                        })
          
            
            if funFacts % 2 != 0 {
                Text("I am a freshman at UIUC")
                    .lineLimit(4)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.white)
                Text("I love watching sports")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.white)
                Text("This is my third year as an IA")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.white)
                Text("I love being outdoors")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.white)
                Text("I enjoy reading and listening to music")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor (Color.white)
                
            }
            
        }
        .background (Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
