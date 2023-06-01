//
//  ___FILEHEADER___
//

import Foundation
import SwiftUI
import Dependencies
import FirebaseCrashlytics

@MainActor
class ___VARIABLE_productName:identifier___ViewModel: AnalyticsTrackingViewModel<___VARIABLE_productName:identifier___Analytics>, ObservableObject {

    @Published var destination: Destination? {
        didSet { self.bind() }
    }

    var onDismiss: (() -> Void)?

    enum Destination {
        // Fill in destinations
    }

    required init(
        destination: Destination? = nil
    ) {
        self.destination = destination

        super.init()

        self.bind()
    }

    private func bind() {
        Crashlytics.crashlytics().log("\(type(of: self)) will go to \(String(describing: self.destination))")

        switch self.destination {
        default:
            break
        }
    }
}
