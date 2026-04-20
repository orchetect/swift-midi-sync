//
//  MTC Generator Tests.swift
//  swift-midi • https://github.com/orchetect/swift-midi
//  © 2026 Steffan Andrews • Licensed under MIT License
//

@testable import SwiftMIDIInternals
@testable import SwiftMIDISync
import Testing
import SwiftTimecodeCore

@Suite struct MTC_Generator_Generator_Tests {
    private final actor Sandbox {
        func foo() {
            let mtcGen = MTCGenerator()
            mtcGen.setMIDIOutHandler { [weak self] midiMessage in
                _ = self
                _ = midiMessage
            }
            
            _ = MTCGenerator { [weak self] midiMessage in
                _ = self
                _ = midiMessage
            }
            
            _ = MTCGenerator(midiOutHandler: { midiMessage in
                _ = midiMessage
            })
            
            _ = MTCGenerator { (midiMessage) in
                _ = midiMessage
            }
        }
    }
    
    @Test
    func mtcGenerator_Default() async {
        // just testing variations on syntax
        
        let sandbox = Sandbox()
        await sandbox.foo()
    }
}
