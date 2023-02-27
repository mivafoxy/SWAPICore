//
//  State.swift
//  
//
//  Created by Илья Малахов on 29.01.2023.
//

import SwiftUI

// Создать ServiceLocator(SOA)/MVVM(вложенные вьюмодели)/Flux(вложенные сторы)/MobX(контейнер-медиатор)

// MARK: - Action
public protocol FluxAction {}

// MARK: - Store
public protocol FluxStore: ObservableObject {
    func onDispatch(with action: FluxAction)
}

// MARK: - Dispatcher
public protocol FluxDispatcher {
    func register(actionType: FluxAction.Type, for store: any FluxStore)
    func dispatch(action: FluxAction)
}
