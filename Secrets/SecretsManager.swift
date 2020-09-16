//
//  SecretsManager.swift
//  Secrets
//
//  Created by Alex Nagy on 16/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import Foundation

public class SecretsManager {
    
    private var isAuthorized: Bool
    
    public init(key: String) {
        isAuthorized = Approved.keys.contains(key) ? true : false
    }
    
    public func readSecret() -> String? {
        isAuthorized ? "I love custom frameworks" : nil
    }
}

private struct Approved {
    static let keys = ["12345", "asdfg"]
}
