//
//  Log.swift
//  SwiftMIDI Sync • https://github.com/orchetect/swift-midi-sync
//  © 2026 Steffan Andrews • Licensed under MIT License
//

import Foundation
import os.log

let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "com.orchetect.swift-midi", category: "General")

func logErrors(_ closure: () throws -> Void) {
    do {
        try closure()
    } catch {
        logger.error("\(error.localizedDescription)")
    }
}
