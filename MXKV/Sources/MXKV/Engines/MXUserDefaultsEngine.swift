//
//  KVUserDefaultsEngine.swift
//  MXKV
//
//  Created by yueqian.zhang on 2022/7/23.
//

import Foundation

class MXUserDefaultsEngine: MXEngine {
    private let userDefaults = UserDefaults.standard
    
    func setData(_ val: Data?, forKey key: String) {
        userDefaults.set(val, forKey: key)
    }
    
    func getData(forKey key: String) -> Data? {
        userDefaults.data(forKey: key)
    }
}
