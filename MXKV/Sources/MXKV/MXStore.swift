//
//  MXStore.swift
//  MXKV
//
//  Created by yueqian.zhang on 2022/7/23.
//

import Foundation

@propertyWrapper
struct MXStore<Value: MXValue> {
    let scope: String
    let name: String
    let defaultValue: Value
    
    var key: String { "\(scope).\(name)" }
    
    private var engine: MXEngine {
        MXKV.engine(forKey: key)
    }
    
    var wrappedValue: Value {
        get {
            if let data = engine.getData(forKey: key),
               let value = try? JSONDecoder().decode(Value.self, from: data) {
                return value
            }
            return defaultValue
        }
        set {
            guard let data = try? JSONEncoder().encode(newValue) else { return }
            engine.setData(data, forKey: key)
        }
    }
    
    var projectedValue: Self { self }

    init(scope: String = #function, _ name: String, default: Value? = nil) {
        self.scope = scope
        self.name = name
        self.defaultValue = `default` ?? Value.mx_default
    }
    
    var isUnset: Bool { engine.getData(forKey: key) == nil }
    func unset() { engine.setData(nil, forKey: key) }
}
