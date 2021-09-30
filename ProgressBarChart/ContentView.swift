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
            
           VStack {
            Text("Ins and Outs")
                .font(.headline)
            }
            ZStack {
               // Rectangle().frame(width: 360, height: 25)
              //  .foregroundColor(Color.white)
                
                HStack(spacing: 2) {

                    RoundedCornersShape(corners: [.topLeft, .bottomLeft], radius: 15)
                        .fill(Color(#colorLiteral(red: 0.8202568293, green: 0.1505224109, blue: 0.09123057872, alpha: 1)))
                        .frame(width: 200, height: 15)
                    //Spacer(minLength: 0)
              
                    RoundedCornersShape(corners: [.topRight, .bottomRight], radius: 15)
                        .fill(Color(#colorLiteral(red: 0.1263336241, green: 0.1195754185, blue: 0.3506284952, alpha: 1)))
                        .frame(width: 150, height: 15)
                }
                
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Spending")
                        .font(.footnote)
                        .foregroundColor(Color(#colorLiteral(red: 0.2785941958, green: 0.2781485915, blue: 0.2913044393, alpha: 1)))
                    
                    Text("$4,246.83")
                        .padding(.bottom)
                        .font(.headline)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Income")
                        .font(.footnote)
                        .foregroundColor(Color(#colorLiteral(red: 0.2785941958, green: 0.2781485915, blue: 0.2913044393, alpha: 1)))
                    
                    Text("$3,687.56")
                        .padding(.bottom)
                        .font(.headline)
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

