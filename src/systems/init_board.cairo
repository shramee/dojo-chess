#[system]
mod init_board {
    use array::ArrayTrait;
    use traits::Into;
    use dojo::world::Context;
    use dojo_chess::components::{Piece, Position, PieceKind, PieceSide};

    fn execute(ctx: Context) {
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
        assert(*white_pawn_1_position[0] == 0, 'position x is wrong');
        assert(*white_pawn_1_position[1] == 1, 'position y is wrong');
    }
}

