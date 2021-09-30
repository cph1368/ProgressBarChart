//
//  ContentView.swift
//  ProgressBarChart
//
//  Created by Corry Handayani on 30/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 300, height: 50)
                .foregroundColor(Color.white)
            
            HStack {
                Rectangle()
                    .frame(width: 180 , height: 50, alignment: .leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.8332621455, green: 0.1409429014, blue: 0.06613579392, alpha: 1)))
                    .cornerRadius(45.0)
                Spacer()
                Rectangle()
                    .frame(width: 120 , height: 50, alignment: .leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.1347649097, green: 0.1234534159, blue: 0.3545898795, alpha: 1)))
                    .cornerRadius(45.0)
            }
            
          
            
        }.cornerRadius(45.0)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
