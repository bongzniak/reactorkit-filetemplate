//
//  CommonEvents.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import Umbrella

typealias CommonAnalytics = Umbrella.Analytics<CommonEvents>

enum CommonEvents {
}

extension CommonEvents: EventType {
    func name(for provider: ProviderType) -> String? {
        switch self {
        
        }
    }

    public func parameters(for provider: ProviderType) -> [String: Any]? {
        switch self {
        
        }
    }
}