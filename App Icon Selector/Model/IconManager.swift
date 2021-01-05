//
//  IconManager.swift
//  App Icon Selector
//
//  Created by Ben Clarke on 21/12/2020.
//

import Foundation
import UIKit

public enum AppIcon: Int, CaseIterable {
    case classic, messenger, myspace, netflix, telegram, triller, uber
        
    public var name: String? {
        switch self {
        case .classic: return "appstore"
        case .messenger: return "messenger"
        case .myspace: return "myspace"
        case .netflix: return "netflix"
        case .telegram: return "telegram"
        case .uber: return "uber"
        case .triller: return "triller"
        }
    }
    
    public var subtitle: String {
        switch self {
        case .classic: return "Classic default icon"
        case .messenger: return "Classic icon"
        case .myspace: return "Bring back myspace"
        case .netflix: return "Watch videos"
        case .telegram: return "Encrypted messenger"
        case .uber: return "Order food"
        case .triller: return "Just another app icon"
        }
    }
    
}
