//
//  MTC MTCFrameRate Tests.swift
//  SwiftMIDI Sync • https://github.com/orchetect/swift-midi-sync
//  © 2026 Steffan Andrews • Licensed under MIT License
//

@testable import SwiftMIDISync
import SwiftTimecodeCore
import Testing

@Suite
struct MTC_MTCFrameRate_Tests {
    @Test
    func mtcFrameRate_Init_TimecodeFrameRate() {
        // test is pedantic, but worth having

        for item in TimecodeFrameRate.allCases {
            #expect(MTCFrameRate(item) == item.mtcFrameRate)
        }
    }
}
