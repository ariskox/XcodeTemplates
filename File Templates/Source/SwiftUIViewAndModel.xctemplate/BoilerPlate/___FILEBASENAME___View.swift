//
//  ___FILEHEADER___
//

import SwiftUI
import BFFoundation
import Dependencies
import SwiftUINavigation

struct ___VARIABLE_productName:identifier___View: View {
    @ObservedObject var viewModel: ___VARIABLE_productName:identifier___ViewModel
    @State var isNavigationHidden: Bool = true

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                headerView
                    .trackNavigationBar(namespace: "___VARIABLE_productName:identifier___View",
                                        offset: 100,
                                        isNavigationHidden: $isNavigationHidden)
                Text("___VARIABLE_productName:identifier___View")
            }
        }
        .coordinateSpace(name: "___VARIABLE_productName:identifier___View")
        .navigationBarHidden(isNavigationHidden)
        .customNavigationTitle("___VARIABLE_productName:identifier___") // TODO: fix me
        .onAppear {
            viewModel.sendPageAnalyticsEvent()
        }
        .onDisappear {
            viewModel.sendScrollAnalyticsEvent()
        }
    }
}

// MARK: - Header

private extension ___VARIABLE_productName:identifier___View {
    var headerView: some View {
        Text("___VARIABLE_productName:identifier___View Header")
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
