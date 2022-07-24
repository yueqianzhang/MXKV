//
//  MXEngine.swift
//  MXKV
//
//  Created by yueqian.zhang on 2022/7/22.
//

import Foundation

protocol MXEngine {
    func setData(_ val: Data?, forKey key: String)
    func getData(forKey key: String) -> Data?
}
