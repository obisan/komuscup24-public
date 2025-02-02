/// TODO - Document
public struct Traffic {
    /// TODO - Document
    let amount: Int32

    /// TODO - Document
    let moveTime: Double

    /// TODO - Document
    let radius: Double

    /// TODO - Document
    let weight: Double

    /// TODO - Document
    let crashDeceleration: Double

    /// TODO - Document
    let crashLifetime: Double

    /// Read Traffic from input stream
    static func readFrom<S: InputStream>(_ stream: S) -> Traffic {
        var amount: Int32
        amount = stream.readInt32()
        var moveTime: Double
        moveTime = stream.readDouble()
        var radius: Double
        radius = stream.readDouble()
        var weight: Double
        weight = stream.readDouble()
        var crashDeceleration: Double
        crashDeceleration = stream.readDouble()
        var crashLifetime: Double
        crashLifetime = stream.readDouble()
        return Traffic(amount: amount, moveTime: moveTime, radius: radius, weight: weight, crashDeceleration: crashDeceleration, crashLifetime: crashLifetime)
    }

    /// Write Traffic to output stream
    func writeTo<S: OutputStream>(_ stream: S) {
        stream.writeInt32(amount)
        stream.writeDouble(moveTime)
        stream.writeDouble(radius)
        stream.writeDouble(weight)
        stream.writeDouble(crashDeceleration)
        stream.writeDouble(crashLifetime)
    }
}