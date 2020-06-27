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

    enum FirstTutorial: Localized {
        case title
        case description

        var localized: String {
            switch self {
            case .title      : return NSLocalizedString("FIRST_TUTORIAL_TITLE", comment: "Кто мы?")
            case .description: return NSLocalizedString("FIRST_TUTORIAL_DESCRIPTION", comment: "Coffe Pushkin - сервис №1 в сфере кофе!")
            }
        }
    }

    enum SecondTutorial: Localized {
        case title
        case description

        var localized: String {
            switch self {
            case .title: return NSLocalizedString("SECOND_TUTORIAL_TITLE", comment: "Что мы делаем?")
            case .description: return NSLocalizedString("SECOND_TUTORIAL_DESCRIPTION", comment: "Готовим и доставляем ароматный и вкусный кофе.")
            }
        }
    }

    enum ThirdTutorial: Localized {
        case title
        case description

        var localized: String {
            switch self {
            case .title      : return NSLocalizedString("THIRD_TUTORIAL_TITLE", comment: "Где мы?")
            case .description: return NSLocalizedString("THIRD_TUTORIAL_DESCRIPTION", comment: "Очень часто мы устраиваем крупные акции на всю продукцию, разрешите вам узнать где мы, чтобы вы не упустили свою возможность.")
            }
        }
    }

    enum FourthTutorial: Localized {
        case title
        case description

        var localized: String {
            switch self {
            case .title      : return NSLocalizedString("FOURTH_TUTORIAL_TITLE", comment: "Начни свой день вкусно")
            case .description: return NSLocalizedString("FOURTH_TUTORIAL_DESCRIPTION", comment: "Выбери меню и начни свой день правильно уже сегодня!")
            }
        }
    }

    enum TabBar: Localized {
        case feed
        case profile
        case order
        case settings

        var localized: String {
            switch self {
            case .feed    : return NSLocalizedString("FEED_TAB", comment: "Лента")
            case .profile : return NSLocalizedString("PROFILE_TAB", comment: "Профиль")
            case .order   : return NSLocalizedString("ORDER_TAB", comment: "Корзина")
            case .settings: return NSLocalizedString("SETTINGS_TAB", comment: "Настройки")
            }
        }
    }

    enum Messages: Localized {
        case emptyDataToastTitle
        case emptyDataToastDescription
        case emptyDataTitle
        case emptyDataDescription
        case noInternetTitle
        case noInternetDescription
        case update

        var localized: String {
            switch self {
            case .emptyDataTitle: return NSLocalizedString("EMPTY_DATA_TITLE", comment: "Данные не получены")
            case .emptyDataDescription: return NSLocalizedString("EMPTY_DATA_DESCRIPTION", comment: "Что-то не так на стороне сервера")
            case .noInternetTitle: return NSLocalizedString("NO_INTERNET_TITLE", comment: "Нет интернет соединения")
            case .noInternetDescription: return NSLocalizedString("NO_INTERNET_DESCRIPTION", comment: "Проверьте ваше подключение к интернету")
            case .update: return NSLocalizedString("UPDATE", comment: "Обновить")
            case .emptyDataToastTitle: return NSLocalizedString("EMPTY_DATA_TOAST_TITLE", comment: "Не удалось получить данные")
            case .emptyDataToastDescription: return NSLocalizedString("EMPTY_DATA_TOAST_DESCRIPTION", comment: "Вы используете приложение в режиме офлайн")
            }
        }
    }

    struct Popup {
        enum Drinks: Localized {
            case title
            case description

            var localized: String {
                switch self {
                case .title: return NSLocalizedString("POPUP_DRINKS_TITLE", comment: "Мы сделали для вас классные напитки!")
                case .description: return NSLocalizedString("POPUP_DRINKS_DESCRIPTION", comment: "Только натуральные ингридиенты. Доступны к заказу каждый день.")
                }
            }
        }

        enum Coffee: Localized {
            case title
            case description

            var localized: String {
                switch self {
                case .title: return ""
                case .description: return ""
                }
            }
        }
    }
}
