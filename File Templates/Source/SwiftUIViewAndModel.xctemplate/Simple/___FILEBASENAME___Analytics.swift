//
//  ___FILEHEADER___
//

import Foundation
import SwiftUI

class ___VARIABLE_productName:identifier___Analytics: AnalyticsProvider {

    private(set) var baseDictionary: AnalyticsProperties = [:]
    private let screenName = "__FIX_ME__" // TODO: fix screen name

    init() {
        let dictionary: AnalyticsProperties = [
            .screenName: screenName
        ]
        self.baseDictionary = dictionary
    }

    enum EventType: EventTypeProtocol {
        case pageView
        case maxScroll(Float)
    }

    enum ScrollProgress: Float {
        case none = 0.0
    }

    func getEvent(_ type: EventType) -> AnalyticsEvent {
        let additionalDict = baseDictionary

        switch type {
        case .pageView:
            return PageAnalyticsEvent(screenName, properties: additionalDict)
        case .maxScroll(let percent):
            return EventAnalyticsEvent(scrollPercentage: percent, properties: additionalDict)
        }
    }
}
