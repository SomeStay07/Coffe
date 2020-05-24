//
//  Strings.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol Localized {
    var localized: String { get }
}

enum Strings {
    
    enum Tutorial {
        
        enum WelcomePage: Localized {
            case title
            case description
            
            var localized: String {
                switch self {
                case .title      : return NSLocalizedString("WELCOME_PAGE_TITLE", comment: "Добро пожаловать!")
                case .description: return NSLocalizedString("WELCOME_PAGE_DESCRIPTION", comment: "Coffe Pushkin уведомит вас об акциях и скидках, расскажет про историю кофе, поможет вам облегчить покупку кофе. Но сначала давайте его немного настроим.")
                }
            }
        }
        
        enum LocationPage: Localized {
            case title
            case description
            
            var localized: String {
                switch self {
                case .title      : return NSLocalizedString("LOCATION_PAGE_TITLE", comment: "Где мы?")
                case .description: return NSLocalizedString("LOCATION_PAGE_DESCRIPTION", comment: "Очень часто мы устраиваем крупные акции на всю продукцию, разрешите вам узнать где мы, чтобы вы не упустили свою возможность.")
                }
            }
        }
        
        enum NotificationPage: Localized {
            case title
            case description
            
            var localized: String {
                switch self {
                case .title      : return NSLocalizedString("NOTIFICATION_PAGE_TITLE", comment: "Важные уведомления")
                case .description: return NSLocalizedString("NOTIFICATION_PAGE_DESCRIPTION", comment: "Бывает, что у нас начались акции и скидки, а вы это можете пропустить. Для этого разрешите пуш-уведомления.")
                }
            }
        }
    }
}
