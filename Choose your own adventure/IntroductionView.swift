//
//  IntroductionView.swift
//  Choose your own adventure
//
//  Created by Colin Joyce on 12/14/22.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Choose your own adventure").fixedSize(horizontal: true, vertical: false)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
            }
           
        }
    }
}


struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
