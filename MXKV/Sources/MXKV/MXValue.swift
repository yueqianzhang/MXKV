//
//  MXValue.swift
//  
//
//  Created by yueqian.zhang on 2022/7/23.
//

import Foundation

protocol MXValue: Codable {
    static var mx_default: Self { get }
}

// MARK: - Type Extensions
// TODO: mx_default -> mx.default

extension Bool: MXValue {
    static var mx_default: Bool { false }
}

extension Int: MXValue {
    static var mx_default: Int { 0 }
}

extension Int8: MXValue {
    static var mx_default: Int8 { 0 }
}

extension Int16: MXValue {
    static var mx_default: Int16 { 0 }
}

extension Int32: MXValue {
    static var mx_default: Int32 { 0 }
}

extension Int64: MXValue {
    static var mx_default: Int64 { 0 }
}

extension UInt: MXValue {
    static var mx_default: UInt { 0 }
}

extension UInt8: MXValue {
    static var mx_default: UInt8 { 0 }
}

extension UInt16: MXValue {
    static var mx_default: UInt16 { 0 }
}

extension UInt32: MXValue {
    static var mx_default: UInt32 { 0 }
}

extension UInt64: MXValue {
    static var mx_default: UInt64 { 0 }
}

extension Float: MXValue {
    static var mx_default: Float { 0 }
}

extension Double: MXValue {
    static var mx_default: Double { 0 }
}

extension String: MXValue {
    static var mx_default: String { "" }
}

extension Set: MXValue where Element: Codable {
    static var mx_default: Set<Element> { [] }
}

extension Array: MXValue where Element: Codable {
    static var mx_default: Array<Element> { [] }
}

extension Dictionary: MXValue where Key: Codable, Value: Codable {
    static var mx_default: Dictionary<Key, Value> { [:] }
}

extension Date: MXValue {
    static var mx_default: Date { Date() }
}

extension Data: MXValue {
    static var mx_default: Data { Data() }
}
