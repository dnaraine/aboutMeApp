//
//  ContentView.swift
//  aboutMeApp
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var TextTitle = "Divya Naraine"
    
    var body: some View {
        ZStack {
            
        VStack(spacing: 35) {
            
            
            Text(TextTitle)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.indigo)
                .multilineTextAlignment(.center)
            
            HStack {
                Image("icecream")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                Image("bellvale")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
            }
            
            Button("More About Me!") {
                TextTitle = "Literally I have the hugest sweet tooth. In general, but especially in the summertime, I love having ice cream. The heat is just an excuse to eat more of it."
            }
            .font(.callout)
            .buttonStyle(.borderedProminent)
            .shadow(radius: 15)
            .tint(.indigo)
        }
    }
        .padding(.all)
}
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
