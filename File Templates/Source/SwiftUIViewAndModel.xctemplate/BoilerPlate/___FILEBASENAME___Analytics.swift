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

    // TODO: Keep or remove generator
//    @Dependency(\.analyticsGenerator) var generator

    init(
    ) {
        var dictionary: AnalyticsProperties = [
            .screenName: screenName
        ]
        // TODO: Keep or remove generator
//        dictionary.mergeIgnoringDuplicates(generator.challengeAnalytics())
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
//        case .anEvent(let count):
//            additionalDict.mergeIgnoringDuplicates([
//                .challengeActivitiesSkipped: count
//            ])
//            return EventAnalyticsEvent("skip_pressed", properties: additionalDict)
        }
    }
}
