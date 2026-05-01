//
//  SwiftMIDISync Extensions.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import SwiftMIDISync

extension MTCEncoder.FullFrameBehavior {
    public var nameForUI: String {
        switch self {
        case .always:
            "Always"
        case .ifDifferent:
            "If Different"
        case .never:
            "Never"
        }
    }
}

// TODO: Can remove if/when Codable for this is implemented in swift-midi
extension MTCEncoder.FullFrameBehavior: @retroactive Codable {
    private enum Values: String {
        case always
        case ifDifferent
        case never
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let val = try container.decode(String.self)
        guard let match = Self(rawValue: val) else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(codingPath: container.codingPath, debugDescription: "")
            )
        }
        self = match
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(true)
    }
}

// TODO: Can remove if/when Codable for this is implemented in swift-midi
extension MTCEncoder.FullFrameBehavior: @retroactive RawRepresentable {
    public typealias RawValue = String

    private var stringValue: String {
        switch self {
        case .always: "always"
        case .ifDifferent: "ifDifferent"
        case .never: "never"
        }
    }

    public init?(rawValue: String) {
        for val in MTCEncoder.FullFrameBehavior.allCases {
            if val.stringValue == rawValue { self = val; return }
        }
        return nil
    }

    public var rawValue: String {
        stringValue
    }
}
