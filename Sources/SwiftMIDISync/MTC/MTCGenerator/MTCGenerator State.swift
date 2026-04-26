//
//  MTCGenerator State.swift
//  SwiftMIDI Sync • https://github.com/orchetect/swift-midi-sync
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import SwiftMIDICore

// MARK: - State

extension MTCGenerator {
    public enum State {
        /// Idle:
        /// No activity (outgoing continuous data stream stopped).
        case idle

        /// Generating:
        /// Generator is actively generating messages.
        case generating
    }
}

extension MTCGenerator.State: Equatable { }

extension MTCGenerator.State: Hashable { }

extension MTCGenerator.State: Identifiable {
    public var id: Self {
        self
    }
}

extension MTCGenerator.State: Sendable { }

extension MTCGenerator.State: CustomStringConvertible {
    public var description: String {
        switch self {
        case .idle:
            "idle"
        case .generating:
            "generating"
        }
    }
}
