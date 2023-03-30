//
//  DiceNumberView.swift
//  DiceRollSwiftUI
//
//  Created by Wynelher Tagayuna on 3/30/23.
//

import SwiftUI

struct DiceNumberView: View {// Get dice image
    var diceNumber: Int
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceNumberView_Previews: PreviewProvider {
    static var previews: some View {
        DiceNumberView(diceNumber: 1)
    }
}
