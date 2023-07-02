#[system]
mod Move {
    use array::ArrayTrait;
    use traits::Into;
    use dojo::world::Context;
    use dojo_chess::components::{Position, Piece, PieceKind, PieceSide};

    fn execute(ctx: Context, entity_name: felt252, new_position: Position) {
        let (piece, current_position) = get !(ctx.world, entity_name.into(), (Piece, Position));
        assert(check_out_of_bounds(new_position), 'Out of bounds');
        assert(check_position_is_valid(piece, current_position, new_position), 'Invalid move');
        set !(ctx.world, entity_name.into(), (Position { x: new_position.x, y: new_position.y }, ));
        return ();
    }

    fn check_out_of_bounds(new_pos: Position) -> bool {
        if new_pos.x > 7 || new_pos.x < 0 {
            return false;
        }
        if new_pos.y > 7 || new_pos.y < 0 {
            return false;
        }
        true
    }

    fn check_position_is_valid(piece: Piece, current_pos: Position, new_pos: Position) -> bool {
        match piece.kind {
            PieceKind::Pawn(()) => {
                match piece.side {
                    PieceSide::White(()) => {
                        if (current_pos.x == new_pos.x && current_pos.y + 1 == new_pos.y) {
                            true
                        } else {
                            false
                        }
                    },
                    PieceSide::Black(()) => {
                        if (current_pos.x == new_pos.x && current_pos.y - 1 == new_pos.y) {
                            true
                        } else {
                            false
                        }
                    },
                }
            },
            PieceKind::Knight(()) => {
                if (current_pos.x + 2 == new_pos.x && current_pos.y + 1 == new_pos.y) {
                    true
                } else if (current_pos.x + 2 == new_pos.x && current_pos.y - 1 == new_pos.y) {
                    true
                } else if (current_pos.x - 2 == new_pos.x && current_pos.y + 1 == new_pos.y) {
                    true
                } else if (current_pos.x - 2 == new_pos.x && current_pos.y - 1 == new_pos.y) {
                    true
                } else if (current_pos.x + 1 == new_pos.x && current_pos.y + 2 == new_pos.y) {
                    true
                } else if (current_pos.x + 1 == new_pos.x && current_pos.y - 2 == new_pos.y) {
                    true
                } else if (current_pos.x - 1 == new_pos.x && current_pos.y + 2 == new_pos.y) {
                    true
                } else if (current_pos.x - 1 == new_pos.x && current_pos.y - 2 == new_pos.y) {
                    true
                } else {
                    false
                }
            },
            PieceKind::Bishop(()) => {
                if (current_pos.x - new_pos.x) == (current_pos.y - new_pos.y) {
                    true
                } else {
                    false
                }
            },
            PieceKind::Rook(()) => {
                if (current_pos.x == new_pos.x) || (current_pos.y == new_pos.y) {
                    true
                } else {
                    false
                }
            },
            PieceKind::Queen(()) => {
                if (current_pos.x == new_pos.x)
                    || (current_pos.y == new_pos.y)
                    || ((current_pos.x - new_pos.x) == (current_pos.y - new_pos.y)) {
                    true
                } else {
                    false
                }
            },
            PieceKind::King(()) => {
                if (current_pos.x == new_pos.x && current_pos.y + 1 == new_pos.y) {
                    true
                } else if (current_pos.x == new_pos.x && current_pos.y - 1 == new_pos.y) {
                    true
                } else if (current_pos.x + 1 == new_pos.x && current_pos.y == new_pos.y) {
                    true
                } else if (current_pos.x - 1 == new_pos.x && current_pos.y == new_pos.y) {
                    true
                } else if (current_pos.x + 1 == new_pos.x && current_pos.y + 1 == new_pos.y) {
                    true
                } else if (current_pos.x + 1 == new_pos.x && current_pos.y - 1 == new_pos.y) {
                    true
                } else if (current_pos.x - 1 == new_pos.x && current_pos.y + 1 == new_pos.y) {
                    true
                } else if (current_pos.x - 1 == new_pos.x && current_pos.y - 1 == new_pos.y) {
                    true
                } else {
                    false
                }
            },
        }
    }
}
