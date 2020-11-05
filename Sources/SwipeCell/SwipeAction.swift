//
//  File.swift
//  
//
//  Created by Christiano Gontijo on 5/11/20.
//

import SwiftUI
import UIKit

public protocol SwipeActionProtocol {
    
    typealias Block = () -> Void
    
    var rawValue: String { get }
    var image: UIImage   { get }
    var block: Block     { get }
    
}

extension SwipeActionProtocol {
    
    @available(iOS 13.0, *)
    var slot: Slot {
        Slot(image: { Image(uiImage: self.image) },
             title: { Text(self.rawValue).embedInAnyView() },
             action: self.block,
             style:  .init(background: Color(.systemBackground), imageColor: Color(.systemBackground), slotWidth: 80.0))
    }
}

