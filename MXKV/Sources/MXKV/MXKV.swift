//
//  MXKV.swift
//  MXKV
//
//  Created by yueqian.zhang on 2022/7/23.
//

final class MXKV {
    private static let shared = MXKV()
    private lazy var defaultEngine: MXEngine = {
        MXUserDefaultsEngine()
    }()

    private init() {}
    
    @inlinable
    static func engine(forKey key: String) -> MXEngine {
        // TODO: Scope Config
        shared.defaultEngine
    }
}
