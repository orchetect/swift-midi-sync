![swift-midi-sync](Images/swift-midi-sync-banner.png)

# SwiftMIDI Sync

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Forchetect%2Fswift-midi-sync%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/orchetect/swift-midi-sync) [![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Forchetect%2Fswift-midi-sync%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/orchetect/swift-midi-sync) [![License: MIT](http://img.shields.io/badge/License-MIT-lightgrey.svg?style=flat)](https://github.com/orchetect/swift-midi-sync/blob/main/LICENSE)

Extension for [SwiftMIDI](https://github.com/orchetect/swift-midi) adding support for MIDI synchronization protocols, such as MTC (MIDI Timecode).

## Compatibility

| macOS | iOS  | visionOS | Linux | Android | Windows |
| :---: | :--: | :------: | :---: | :-----: | :-----: |
|   🟢   |  🟢   |    🟢     |  🚧 †  |   🚧 †   |    -    |

`†` Support for indicated platforms is either planned or WIP.

## Getting Started

This extension is available as a Swift Package Manager (SPM) package.

To use this extension as standalone dependency (instead of importing the **swift-midi** umbrella repository):

1. Add the **swift-midi-sync** repo as a dependency.

   ```swift
   .package(url: "https://github.com/orchetect/swift-midi-sync", from: "1.0.0")
   ```

2. Add **SwiftMIDISync** to your target.

   ```swift
   .product(name: "SwiftMIDISync", package: "swift-midi-sync")
   ```

3. Import **SwiftMIDISync** to use it.

   ```swift
   import SwiftMIDISync
   ```

## Documentation & Support

See the [online documentation](https://swiftpackageindex.com/orchetect/swift-midi-sync/main/documentation) for this repository and the dedicated [code examples](https://github.com/orchetect/swift-midi-examples) repository.

For support, feature requests, and bug reports see the main [SwiftMIDI](https://github.com/orchetect/swift-midi) repository.

## Author

Coded by a bunch of 🐹 hamsters in a trenchcoat that calls itself [@orchetect](https://github.com/orchetect).

## License

Licensed under the MIT license. See [LICENSE](https://github.com/orchetect/swift-midi-sync/blob/master/LICENSE) for details.