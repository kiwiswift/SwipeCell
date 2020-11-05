//
//  Extensions.swift
//  
//
//  Created by Enes Karaosman on 9.05.2020.
//

import SwiftUI

@available(iOS 13.0, *)
public extension View {
    
    func onSwipe(leading: [Slot] = [], trailing: [Slot] = []) -> some View {
        return self.modifier(SlidableModifier(leading: leading, trailing: trailing))
    }
    
    func embedInAnyView() -> AnyView {
        return AnyView ( self )
    }
}
