//
//  ContentView.swift
//  ProgressBarChart
//
//  Created by Corry Handayani on 30/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var leftBar = 200
    @State private var rightBar = 150
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack {
                Text("Ins and outs")
                    .font(.headline)
            }
            ZStack {
                HStack(spacing: 2) {
                    
                    RoundedCornersShape(corners: [.topLeft, .bottomLeft], radius: 15)
                        .fill(Color(#colorLiteral(red: 0.8202568293, green: 0.1505224109, blue: 0.09123057872, alpha: 1)))
                        .frame(width: CGFloat(leftBar), height: 15)
                    
                    RoundedCornersShape(corners: [.topRight, .bottomRight], radius: 15)
                        .fill(Color(#colorLiteral(red: 0.1263336241, green: 0.1195754185, blue: 0.3506284952, alpha: 1)))
                        .frame(width: CGFloat(rightBar), height: 15)
                }
                
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Spending")
                        .font(.footnote)
                        .foregroundColor(Color(#colorLiteral(red: 0.4834580421, green: 0.4777960777, blue: 0.4998141527, alpha: 1)))
                    
                    
                    Text("$4,246.83")
                        .font(.headline)
                        .padding(.top,1)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Income")
                        .font(.footnote)
                        .foregroundColor(Color(#colorLiteral(red: 0.4834580421, green: 0.4777960777, blue: 0.4998141527, alpha: 1)))
                    
                    
                    Text("$3,687.56")
                        .font(.headline)
                        .padding(.top,1)
                }
            }
            .padding(.top,10)
            
            
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

