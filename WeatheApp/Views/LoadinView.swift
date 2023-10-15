//
//  LoadinView.swift
//  WeatheApp
//
//  Created by Edward Mayk on 29/07/23.
//

import SwiftUI

struct LoadinView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadinView_Previews: PreviewProvider {
    static var previews: some View {
        LoadinView()
    }
}
