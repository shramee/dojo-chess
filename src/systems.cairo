#[system]
mod Move {
    use array::ArrayTrait;
    use traits::Into;
    use dojo::world::Context;
    use dojo_chess::components::{Position, Piece, PieceKind, PieceSide};

    fn execute(ctx: Context, new_position: Position) {
        let (piece, current_position) = get !(ctx.world, ctx.origin.into(), (Piece, Position));
        assert(check_out_of_bounds(new_position), 'Out of bounds');
        assert(check_position_is_valid(piece, current_position, new_position), 'Invalid move');
        set !(ctx.world, ctx.origin.into(), (Position { x: new_position.x, y: new_position.y }, ));
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
                true
            },
            PieceKind::Bishop(()) => {
                true
            },
            PieceKind::Rook(()) => {
                true
            },
            PieceKind::Queen(()) => {
                true
            },
            PieceKind::King(()) => {
                true
            },
        }
    }
}
// #[cfg(test)]
// mod tests {
//     use core::traits::Into;
//     use array::ArrayTrait;

//     use dojo::auth::systems::{Route, RouteTrait};
//     use dojo::interfaces::IWorldDispatcherTrait;

//     use dojo::test_utils::spawn_test_world;

//     use dojo_examples::components::PositionComponent;
//     use dojo_examples::components::MovesComponent;
//     use dojo_examples::systems::Spawn;
//     use dojo_examples::systems::Move;

//     #[test]
//     #[available_gas(30000000)]
//     fn test_move() {
//         let caller = starknet::contract_address_const::<0x1337>();
//         starknet::testing::set_account_contract_address(caller);

//         // components
//         let mut components = array::ArrayTrait::new();
//         components.append(PositionComponent::TEST_CLASS_HASH);
//         components.append(MovesComponent::TEST_CLASS_HASH);
//         // systems
//         let mut systems = array::ArrayTrait::new();
//         systems.append(Spawn::TEST_CLASS_HASH);
//         systems.append(Move::TEST_CLASS_HASH);
//         // routes
//         let mut routes = array::ArrayTrait::new();
//         routes
//             .append(
//                 RouteTrait::new(
//                     'Move'.into(), // target_id
//                     'MovesWriter'.into(), // role_id
//                     'Moves'.into(), // resource_id
//                 )
//             );
//         routes
//             .append(
//                 RouteTrait::new(
//                     'Move'.into(), // target_id
//                     'PositionWriter'.into(), // role_id
//                     'Position'.into(), // resource_id
//                 )
//             );
//         routes
//             .append(
//                 RouteTrait::new(
//                     'Spawn'.into(), // target_id
//                     'MovesWriter'.into(), // role_id
//                     'Moves'.into(), // resource_id
//                 )
//             );
//         routes
//             .append(
//                 RouteTrait::new(
//                     'Spawn'.into(), // target_id
//                     'PositionWriter'.into(), // role_id
//                     'Position'.into(), // resource_id
//                 )
//             );

//         // deploy executor, world and register components/systems
//         let world = spawn_test_world(components, systems, routes);

//         let spawn_call_data = array::ArrayTrait::new();
//         world.execute('Spawn'.into(), spawn_call_data.span());

//         let mut move_calldata = array::ArrayTrait::new();
//         move_calldata.append(Move::Direction::Right(()).into());
//         world.execute('Move'.into(), move_calldata.span());

//         let moves = world.entity('Moves'.into(), caller.into(), 0, 0);
//         assert(*moves[0] == 9, 'moves is wrong');
//     // let new_position = world.entity('Position'.into(), caller.into(), 0, 0);
//     // assert(*new_position[0] == 1, 'position x is wrong');
//     // assert(*new_position[1] == 0, 'position y is wrong');
//     }
// }


