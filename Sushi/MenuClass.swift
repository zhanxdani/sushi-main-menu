//
//  MenuClass.swift
//  Sushi
//
//  Created by Zhatani Dan. on 22.06.2022.
//

import SwiftUI

struct MenuClass: View {
    
    var item: Menu?
    
    var body: some View {
        if(self.item!.isActive) {
            HStack {
                Circle().fill(Color("orangeColor"))
                    .frame(width: 10, height: 10, alignment: .center)
                
                Text(self.item!.title)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Color.white)
            .cornerRadius(8)
        }
        else {
            HStack {
                
                Text(self.item!.title)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            
        }
    }
}

struct MenuClass_Previews: PreviewProvider {
    static var previews: some View {
        let item = Menu(isActive: true, title: "SUSHI")
        MenuClass(item: item)
    }
}
