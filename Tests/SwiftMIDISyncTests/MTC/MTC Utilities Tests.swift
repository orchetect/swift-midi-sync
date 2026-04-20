//
//  MTC Utilities Tests.swift
//  swift-midi • https://github.com/orchetect/swift-midi
//  © 2026 Steffan Andrews • Licensed under MIT License
//

@testable import SwiftMIDISync
import SwiftTimecodeCore
import Testing

@Suite struct MTC_Utilities_Tests {
    @Test
    func global_isMTCEqual() {
        #expect(
            !isMTCEqual(nil, nil)
        )
        
        // test all MTC rates
        for fRate in MTCFrameRate.allCases {
            #expect(
                !isMTCEqual(
                    (mtcComponents: .init(), mtcFrameRate: fRate),
                    nil
                )
            )
            
            #expect(
                !isMTCEqual(
                    nil,
                    (mtcComponents: .init(), mtcFrameRate: fRate)
                )
            )
            
            // == components, == frame rate
            #expect(
                isMTCEqual(
                    (mtcComponents: .init(), mtcFrameRate: fRate),
                    (mtcComponents: .init(), mtcFrameRate: fRate)
                )
            )
            
            // == components, == frame rate
            #expect(
                isMTCEqual(
                    (mtcComponents: .init(h: 1, m: 02, s: 03, f: 04), mtcFrameRate: fRate),
                    (mtcComponents: .init(h: 1, m: 02, s: 03, f: 04), mtcFrameRate: fRate)
                )
            )
            
            // != components, == frame rate
            #expect(
                !isMTCEqual(
                    (mtcComponents: .init(h: 1, m: 02, s: 03, f: 04), mtcFrameRate: fRate),
                    (mtcComponents: .init(h: 1, m: 02, s: 03, f: 05), mtcFrameRate: fRate)
                )
            )
        }
        
        // == components, != frame rate
        #expect(
            !isMTCEqual(
                (mtcComponents: .init(h: 1, m: 02, s: 03, f: 04), mtcFrameRate: .mtc24),
                (mtcComponents: .init(h: 1, m: 02, s: 03, f: 04), mtcFrameRate: .mtc25)
            )
        )
    }
}
