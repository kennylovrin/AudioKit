//
//  autoWah.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** autoWah: Automatic wah pedal - An automatic wah effect, ported from Guitarix via Faust.
     - returns: AKOperation
     - Parameter wah: Wah Amount (Default: 0, Minimum: 0, Maximum: 1)
     - Parameter mix: Dry/Wet Mix (Default: 100, Minimum: 0, Maximum: 100)
     - Parameter amplitude: Overall level (Default: 0.1, Minimum: 0, Maximum: 1)
     */
    public mutating func autoWah(
        wah wah: AKOperation = 0.ak,
        mix: AKOperation = 100.ak,
        amplitude: AKOperation = 0.1.ak
        ) {
            self = self.autoWahed(wah: wah, mix: mix, amplitude: amplitude)

    }
    
    /** autoWah: Automatic wah pedal - An automatic wah effect, ported from Guitarix via Faust.
     - returns: AKOperation
     - Parameter wah: Wah Amount (Default: 0, Minimum: 0, Maximum: 1)
     - Parameter mix: Dry/Wet Mix (Default: 100, Minimum: 0, Maximum: 100)
     - Parameter amplitude: Overall level (Default: 0.1, Minimum: 0, Maximum: 1)
     */
    public func autoWahed(
        wah wah: AKOperation = 0.ak,
        mix: AKOperation = 100.ak,
        amplitude: AKOperation = 0.1.ak
        ) -> AKOperation {
            return AKOperation("\(self)\(amplitude)\(wah)\(mix)autowah")
    }
}

