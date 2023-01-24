//
//  ModelProtocol.swift
//  OTUSHomeworks
//
//  Created by Илья Малахов on 19.12.2022.
//

public protocol ModelProtocol: AnyObject, Identifiable {
    var modelName: String { get }
}
