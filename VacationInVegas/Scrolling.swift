//
//  ScrollImage.swift
//  VacationInVegas
//
//  Created by Kingsleeeey on 2024/8/16.
//

import SwiftUI

struct Scrolling: View {
        
    var body: some View {
        ScrollView {
            VStack {
                ScrollImage(image: .beijing)
                
                ScrollImage(image: .shanghai)
                
                ScrollImage(image: .guangzhou)
                
                ScrollImage(image: .chengdu)
                
                ScrollImage(image: .leshan)
                
                ScrollImage(image: .xiamen)
            }
            .padding()
        }
    }
}

#Preview {
    Scrolling()
}
