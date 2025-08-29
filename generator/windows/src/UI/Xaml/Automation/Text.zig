pub const TextPatternRangeEndpoint = enum(i32) {
    Start = 0,
    End = 1,
};
pub const TextUnit = enum(i32) {
    Character = 0,
    Format = 1,
    Word = 2,
    Line = 3,
    Paragraph = 4,
    Page = 5,
    Document = 6,
};
