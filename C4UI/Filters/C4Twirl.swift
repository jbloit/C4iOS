// Copyright © 2014 C4
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

import C4Core

public struct C4Twirl : C4Filter {
    public let filterName = "CITwirlDistortion"
    public var center: C4Point = C4Point(150,150)
    public var radius: Double = 300.0
    public var angle: Double = M_PI_4
    public init() {}
    public func createCoreImageFilter(inputImage: CIImage) -> CIFilter {
        let filter = CIFilter(name: filterName)
        filter.setDefaults()
        filter.setValue(radius, forKey:"inputRadius")
        filter.setValue(angle, forKey:"inputAngle")
        filter.setValue(CIVector(CGPoint: CGPoint(center)), forKey:"inputCenter")
        filter.setValue(inputImage, forKey: "inputImage")
        return filter
    }
}