//
//  ___FILEHEADER___
//

import Foundation
import SwiftUI
import BFFoundation
import Dependencies

class ___VARIABLE_productName:identifier___Analytics: AnalyticsProvider {

    private(set) var baseDictionary: AnalyticsProperties = [:]
    private let screenName = "__FIX_ME__" // TODO: fix screen name

    init(
    ) {
        var dictionary: AnalyticsProperties = [
            .screenName: screenName
        ]
        self.baseDictionary = dictionary
    }

    enum EventType: EventTypeProtocol {
        case pageView
        case maxScroll(Float)
        // TODO: Add other events
    }

    enum ScrollProgress: Float {
        case none = 0.0
    }

    func getEvent(_ type: EventType) -> AnalyticsEvent {
        var additionalDict = baseDictionary

        switch type {
        case .pageView:
            return PageAnalyticsEvent(screenName, properties: additionalDict)
            // TODO: Add other events
        case .maxScroll(let percent):
            return EventAnalyticsEvent(scrollPercentage: percent, properties: additionalDict)
        }
    }
}
