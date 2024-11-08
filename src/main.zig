const std = @import("std");

const P6 = struct {
    // The width and height is a u16 because if it is any larger the image
    // could become too big or too slow.
    width: u16,
    height: u16,
    data: std.ArrayList(u8),

    pub fn load(path: []const u8, alloc: std.heap.Allocator) P6 {
        // Open the input file
        var file = std.fs.cwd().openFile(path, .{});
        defer file.close();

        // Parse the header
        _ = alloc;
    }

    pub fn new(width: u8, height: u8, alloc: std.heap.Allocator) P6 {
        const tmp = P6{
            .width = width,
            .height = height,
            // The size has to be multiplied by 3 because there is 3 bytes
            // per pixel.
            .data = std.ArrayList(u8).initCapacity(alloc, width * height * 3),
        };
        return tmp;
    }
};

pub fn main() void {}
