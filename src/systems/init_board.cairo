#[system]
mod init_board {
    use array::ArrayTrait;
    use traits::Into;
    use dojo::world::Context;
    use dojo_chess::components::{Piece, Position, PieceKind, PieceSide};

    fn execute(ctx: Context) {
        // need to init 32 pieces
        // White Pawns
        set !(
            ctx.world,
            'white_pawn_1'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 0, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_2'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 1, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_3'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 2, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_4'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 3, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_5'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 4, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_6'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 5, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_7'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 6, y: 1
                }
            )
        )
        set !(
            ctx.world,
            'white_pawn_8'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::White(())
                    }, Position {
                    x: 7, y: 1
                }
            )
        )
        //White Rooks
        set !(
            ctx.world,
            'white_rook_1'.into(),
            (
                Piece {
                    kind: PieceKind::Rook(()), side: PieceSide::White(())
                    }, Position {
                    x: 0, y: 0
                }
            )
        )
        set !(
            ctx.world,
            'white_rook_2'.into(),
            (
                Piece {
                    kind: PieceKind::Rook(()), side: PieceSide::White(())
                    }, Position {
                    x: 7, y: 0
                }
            )
        )
        //White Knights
        set !(
            ctx.world,
            'white_knight_1'.into(),
            (
                Piece {
                    kind: PieceKind::Knight(()), side: PieceSide::White(())
                    }, Position {
                    x: 1, y: 0
                }
            )
        )
        set !(
            ctx.world,
            'white_knight_2'.into(),
            (
                Piece {
                    kind: PieceKind::Knight(()), side: PieceSide::White(())
                    }, Position {
                    x: 6, y: 0
                }
            )
        )
        //White Bishops
        set !(
            ctx.world,
            'white_bishop_1'.into(),
            (
                Piece {
                    kind: PieceKind::Bishop(()), side: PieceSide::White(())
                    }, Position {
                    x: 2, y: 0
                }
            )
        )
        set !(
            ctx.world,
            'white_bishop_2'.into(),
            (
                Piece {
                    kind: PieceKind::Bishop(()), side: PieceSide::White(())
                    }, Position {
                    x: 5, y: 0
                }
            )
        )
        //White Queen
        set !(
            ctx.world,
            'white_queen'.into(),
            (
                Piece {
                    kind: PieceKind::Queen(()), side: PieceSide::White(())
                    }, Position {
                    x: 3, y: 0
                }
            )
        )
        //White King
        set !(
            ctx.world,
            'white_king'.into(),
            (
                Piece {
                    kind: PieceKind::King(()), side: PieceSide::White(())
                    }, Position {
                    x: 4, y: 0
                }
            )
        )
        //Black Pawns
        set !(
            ctx.world,
            'black_pawn_1'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 0, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_2'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 1, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_3'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 2, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_4'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 3, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_5'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 4, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_6'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 5, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_7'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 6, y: 6
                }
            )
        )
        set !(
            ctx.world,
            'black_pawn_8'.into(),
            (
                Piece {
                    kind: PieceKind::Pawn(()), side: PieceSide::Black(())
                    }, Position {
                    x: 7, y: 6
                }
            )
        )
        //Black Rooks
        set !(
            ctx.world,
            'black_rook_1'.into(),
            (
                Piece {
                    kind: PieceKind::Rook(()), side: PieceSide::Black(())
                    }, Position {
                    x: 0, y: 7
                }
            )
        )
        set !(
            ctx.world,
            'black_rook_2'.into(),
            (
                Piece {
                    kind: PieceKind::Rook(()), side: PieceSide::Black(())
                    }, Position {
                    x: 7, y: 7
                }
            )
        )
        //Black Knights
        set !(
            ctx.world,
            'black_knight_1'.into(),
            (
                Piece {
                    kind: PieceKind::Knight(()), side: PieceSide::Black(())
                    }, Position {
                    x: 1, y: 7
                }
            )
        )
        set !(
            ctx.world,
            'black_knight_2'.into(),
            (
                Piece {
                    kind: PieceKind::Knight(()), side: PieceSide::Black(())
                    }, Position {
                    x: 6, y: 7
                }
            )
        )
        //Black Bishops
        set !(
            ctx.world,
            'black_bishop_1'.into(),
            (
                Piece {
                    kind: PieceKind::Bishop(()), side: PieceSide::Black(())
                    }, Position {
                    x: 2, y: 7
                }
            )
        )
        set !(
            ctx.world,
            'black_bishop_2'.into(),
            (
                Piece {
                    kind: PieceKind::Bishop(()), side: PieceSide::Black(())
                    }, Position {
                    x: 5, y: 7
                }
            )
        )
        //Black Queen
        set !(
            ctx.world,
            'black_queen'.into(),
            (
                Piece {
                    kind: PieceKind::Queen(()), side: PieceSide::Black(())
                    }, Position {
                    x: 3, y: 7
                }
            )
        )
        //Black King
        set !(
            ctx.world,
            'black_king'.into(),
            (
                Piece {
                    kind: PieceKind::King(()), side: PieceSide::Black(())
                    }, Position {
                    x: 4, y: 7
                }
            )
        )

        return ();
    }
}
#[cfg(test)]
mod tests {
    use core::traits::Into;
    use array::ArrayTrait;
    use debug::PrintTrait;
    use dojo::world::IWorldDispatcherTrait;
    use dojo::test_utils::spawn_test_world;
    use dojo_chess::components::{piece, position, Piece, Position, PieceKind, PieceSide};
    use super::init_board;


    #[test]
    #[available_gas(30000000)]
    fn test_init_board() {
        let caller = starknet::contract_address_const::<0x1337>();
        starknet::testing::set_account_contract_address(caller);

        // components
        let mut components = array::ArrayTrait::new();
        components.append(position::TEST_CLASS_HASH);
        components.append(piece::TEST_CLASS_HASH);
        // systems
        let mut systems = array::ArrayTrait::new();
        systems.append(init_board::TEST_CLASS_HASH);

        // deploy executor, world and register components/systems
        let world = spawn_test_world(components, systems);

        let mut init_calldata = array::ArrayTrait::new();

        world.execute('init_board'.into(), init_calldata.span());

        let white_pawn_1_piece = world.entity('Piece', 'white_pawn_1'.into(), 0, 0);
        //TODO: check that the piece is in the correct piece
        let white_pawn_1_position = world.entity('Position', 'white_pawn_1'.into(), 0, 0);
        let white_pawn_7_position = world.entity('Position', 'white_pawn_7'.into(), 0, 0);
        assert(*white_pawn_1_position[0] == 0, 'pawn1 position x is wrong');
        assert(*white_pawn_1_position[1] == 1, 'pawn1 position y is wrong');
        assert(*white_pawn_7_position[0] == 6, 'pawn7 position x is wrong');
        assert(*white_pawn_7_position[1] == 1, 'pawn7 position y is wrong');
    }
}

