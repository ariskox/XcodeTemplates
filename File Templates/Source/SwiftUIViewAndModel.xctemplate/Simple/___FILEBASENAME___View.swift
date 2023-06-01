//
//  ___FILEHEADER___
//

import SwiftUI
import BFFoundation

struct ___VARIABLE_productName:identifier___View: View {
    @ObservedObject var viewModel: ___VARIABLE_productName:identifier___ViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
        }
        .onAppear {
            viewModel.sendPageAnalyticsEvent()
        }
        .onDisappear {
            viewModel.sendScrollAnalyticsEvent()
        }
    }
}

// MARK: - Previews

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {
    static var previews: some View {
    ___VARIABLE_productName:identifier___View(
            viewModel: ___VARIABLE_productName:identifier___ViewModel(
            )
        )
    }
}
