use array::ArrayTrait;

#[derive(Copy, Drop, Serde)]
enum PieceKind {
    Pawn: (),
    Knight: (),
    Bishop: (),
    Rook: (),
    Queen: (),
    King: ()
}

#[derive(Copy, Drop, Serde)]
enum PieceSide {
    White: (),
    Black: ()
}

#[derive(Component, Copy, Drop, Serde)]
struct Piece {
    kind: PieceKind,
    side: PieceSide
}


#[derive(Component, Copy, Drop, Serde)]
struct Position {
    x: u32,
    y: u32
}

