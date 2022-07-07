//
//  ContentView.swift
//  Sushi
//
//  Created by Zhatani Dan. on 22.06.2022.
//

import SwiftUI

struct Menu: Hashable, Codable {
    var isActive: Bool
    var title: String
}

struct Item: Hashable, Codable {
    var imageName: String
    var title: String
    var subtitle: String
    var price: Double
    var bgColor: String
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("bgColor")
                VStack {
                    Image("onboarding_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("SUSHI BISHKEK STORE")
                        .font(.system(size: 36)).bold()
                        .foregroundColor(Color("blackColor"))
                    
                    Spacer()
                        .frame(height: 60)
                    
                    Text("Sushi is a Japanese dish featuring specially prepared rice and usually some type of fish or seafood, often raw, but sometimes cooked!")
                        .multilineTextAlignment(.center)
                        .lineSpacing(3)
                        .foregroundColor(Color("GRAYColor"))
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(destination: HomeView()) {
                        ZStack {
                            HStack {
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 25))
                                    .foregroundColor(.white)
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .padding(.leading, -7)
                            }
                            .frame(width: 72, height: 72, alignment: .center)
                            .background(Color("blackColor"))
                            .cornerRadius(15)
                        }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
