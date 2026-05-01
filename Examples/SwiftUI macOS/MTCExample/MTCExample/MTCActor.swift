//
//  MTCActor.swift
//  SwiftMIDI Examples • https://github.com/orchetect/swift-midi-examples
//  © 2026 Steffan Andrews • Licensed under MIT License
//

/// Dedicated background actor for MTC generator and receiver.
@globalActor
public actor MTCActor {
    public static let shared = MTCActor()
}
