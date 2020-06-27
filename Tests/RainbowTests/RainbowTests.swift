import Quick
import Nimble
import XCTest
@testable import Rainbow

final class RainbowTests: QuickSpec {

    override func spec() {
        describe("RainbowColor") {
            describe("Hex Conversion") {
                describe("String values") {

                    it("can be initalized with three digit hex") {
                        let color = RainbowColor(hex: "3F0")
                        expect(color) == RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 1)
                    }

                    it("can be initalized with four digit hex") {
                        let color = RainbowColor(hex: "3F0C")
                        expect(color) == RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 0.8)
                    }

                    it("can be initalized with six digit hex") {
                        let color = RainbowColor(hex: "FF00FF")
                        expect(color) == RainbowColor.magenta
                    }

                    it("can be initalized with eight digit hex") {
                        let color = RainbowColor(hex: "FFFF0000")
                        expect(color) == RainbowColor.yellow.withAlphaComponent(0.0)
                    }

                    it("can not be initalized with other length") {
                        let color = RainbowColor(hex: "1234567890")
                        expect(color).to(beNil())
                    }

                    it("can not be initalized with invalid hexadecimal characters") {
                        let color = RainbowColor(hex: "%")
                        expect(color).to(beNil())
                    }
                }

                describe("Integer values") {

                    it("can be initalized with three digit hex") {
                        let color = RainbowColor(hex: 0x3F0)
                        expect(color) == RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 1)
                    }

                    it("can be initalized with four digit hex") {
                        let color = RainbowColor(hex: 0x3F0C)
                        expect(color) == RainbowColor(red: 0.2, green: 1.0, blue: 0, alpha: 0.8)
                    }

                    it("can be initalized with six digit hex") {
                        let color = RainbowColor(hex: 0xFF00FF)
                        expect(color) == RainbowColor.magenta
                    }

                    it("can be initalized with eight digit hex") {
                        let color = RainbowColor(hex: 0xFFFF0000)
                        expect(color) == RainbowColor.yellow.withAlphaComponent(0.0)
                    }

                    it("can not be initalized with other length") {
                        let color = RainbowColor(hex: 0x1234567890)
                        expect(color).to(beNil())
                    }
                }

                it("can be converted to hexadecimal string") {
                    expect(RainbowColor.orange.hex) == "#ff7f00"
                    expect(RainbowColor.orange.withAlphaComponent(0.5).hex) == "#ff7f007f"
                }
            }
        }
    }
}
