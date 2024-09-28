//
//  IntroScreen.swift
//  KharchaBuddy
//
//  Created by Arif Alam on 24/05/24.
//

import SwiftUI

struct IntroScreen: View {
    ///visibility status
    @AppStorage("isFirstTime")private var isFirstTime: Bool = false
    var body: some View {
        VStack(spacing: 15){
            Text("Whats New in the\nExpense Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom,35)
            /// points View
            VStack(alignment: .leading, spacing: 25, content:{
                PointView(symbol:"dollarsign", tittle: "Transactions", subTitle: "keep track of your earning and expenses.")
                
                
                PointView(symbol:"chart.bar.fill", tittle: "Visual Charts", subTitle: "View your transactions using eye-catching graphic representation")
                PointView(symbol: "magnifyingglass", tittle: "Advance Filters", subTitle: "Find the expenses you want by advance search and filtering.")
                
            })
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.horizontal,25)
            Spacer(minLength: 10)
            Button(action: {isFirstTime=true}, label: {
                Text("Continue")
                    .fontWeight(.bold)
                
            })
        }
        .padding(15)
        
    }
    /// Point View
    @ViewBuilder
    func PointView(symbol: String, tittle: String, subTitle: String)-> some View{
        HStack(spacing:15){
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            VStack(alignment: .leading,spacing: 6, content: {
                Text(tittle)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .foregroundStyle(.gray)
                
            })
            
        }
    }
    
}



struct IntroScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntroScreen()
    }
}
