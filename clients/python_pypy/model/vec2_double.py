from stream_wrapper import StreamWrapper

class Vec2Double:
    """2 dimensional vector."""

    __slots__ = ("x","y",)

    x: float
    y: float

    def __init__(self, x: float, y: float):
        self.x = x
        """`x` coordinate of the vector"""
        self.y = y
        """`y` coordinate of the vector"""

    @staticmethod
    def read_from(stream: StreamWrapper) -> "Vec2Double":
        """Read Vec2Double from input stream
        """
        x = stream.read_double()
        y = stream.read_double()
        return Vec2Double(x, y)
    
    def write_to(self, stream: StreamWrapper):
        """Write Vec2Double to output stream
        """
        stream.write_double(self.x)
        stream.write_double(self.y)
    
    def __repr__(self):
        return "Vec2Double(" + \
            repr(self.x) + \
            ", " + \
            repr(self.y) + \
            ")"