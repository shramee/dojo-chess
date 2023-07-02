use core::traits::Into;
use array::ArrayTrait;
use debug::PrintTrait;
use dojo::world::{IWorldDispatcherTrait, IWorldDispatcher};
use dojo::test_utils::spawn_test_world;
use dojo_chess::systems::{init_board, move};
use dojo_chess::components::{piece, position, Piece, Position, PieceKind, PieceSide};


#[test]
#[available_gas(100000000)]
//Q: Why init_board returns out of gas error even i didn't change any single code? 
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
    systems.append(move::TEST_CLASS_HASH);

    // spawn world
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
