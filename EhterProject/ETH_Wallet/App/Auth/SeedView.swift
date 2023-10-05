//  SeedView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct SeedView: View {
    var seed: String
    
    var body: some View {
        Text(seed)
    }
}

struct SeedView_Previews: PreviewProvider {
    static var previews: some View {
        SeedView(seed: "asdf")
    }
}

