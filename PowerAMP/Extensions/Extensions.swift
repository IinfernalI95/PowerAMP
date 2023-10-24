//
//  UIColor+.swift
//  PowerAMP
//
//  Created by Artur on 15.10.2023.
//

import Foundation
import UIKit

extension UIColor {
    static var dynamicTintColor: UIColor {
        if #available(iOS 13.0, *) {
            // Возвращаем динамический цвет для iOS 13 и выше
            return UIColor { (traitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    // Цвет для темной темы
                    return #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                } else {
                    // Цвет для светлой темы
                    return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                }
            }
        } else {
            // Возвращаем статический цвет для более ранних версий iOS
            return #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        }
    }
    
    static var dynamicColor: UIColor {
        if #available(iOS 13.0, *) {
            // Возвращаем динамический цвет для iOS 13 и выше
            return UIColor { (traitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    // Цвет для темной темы
                    return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                } else {
                    // Цвет для светлой темы
                    return #colorLiteral(red: 0.375379319, green: 0.6439938099, blue: 0.5702605558, alpha: 1)
                }
            }
        } else {
            // Возвращаем статический цвет для более ранних версий iOS
            return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
    }
}
