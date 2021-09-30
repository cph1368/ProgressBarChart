//
//  ContentView.swift
//  ProgressBarChart
//
//  Created by Corry Handayani on 30/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle().frame(width: 300, height: 50)
                .foregroundColor(Color.white)
                
                HStack {

                    RoundedCornersShape(corners: [.topLeft, .bottomLeft], radius: 15)
                        .fill(Color(#colorLiteral(red: 0.8202568293, green: 0.1505224109, blue: 0.09123057872, alpha: 1)))
                        .frame(width: 200, height: 20)
                    Spacer()
              
                    RoundedCornersShape(corners: [.topRight, .bottomRight], radius: 15)
                        .fill(Color(#colorLiteral(red: 0.1263336241, green: 0.1195754185, blue: 0.3506284952, alpha: 1)))
                        .frame(width: 150, height: 20)
                }
                
               
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Spending")
                    Text("4,246.83")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Spending")
                    Text("4,246.83")
                }
            }
           
            
        }
        .frame(width: 350)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

