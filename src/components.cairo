use array::ArrayTrait;

#[derive(Component, Copy, Drop, Serde)]
enum Piece {
    Pawn: (),
    Knight: (),
    Bishop: (),
    Rook: (),
    Queen: (),
    King: ()
}


#[derive(Component, Copy, Drop, Serde)]
struct Position {
    x: u32,
    y: u32
}

