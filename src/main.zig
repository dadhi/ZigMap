const std = @import("std");
const expect = std.testing.expect;
const expectEqual = std.testing.expectEqual;
// const mem = std.mem;

test "Hello, Sailor!" {
    try expect(42 == 42);
}

fn ZigMap(comptime T: type) type {
    return struct {
        hash: i32,
        value: T,
    };
}

test "Can construct generic map leaf" {
    const m = ZigMap([]const u8){
        .hash = 1,
        .value = "dammit",
    };

    try expectEqual(m.value, "dammit");
}

pub fn main() void {
    std.debug.print("{d}\n", .{@TypeOf("blah")});
}
