//
//  Bundle+Signs.swift
//  Signos_app
//
//  Created by Jefferson Oliveira de Araujo on 23/10/21.
//

import UIKit

extension Bundle {
    
    static let signs = Bundle(for: ViewController.self)

    func image(named: String) -> UIImage? {
        return UIImage(named: named, in: self, compatibleWith: nil)
    }
}
