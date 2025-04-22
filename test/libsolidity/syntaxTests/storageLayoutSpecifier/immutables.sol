contract A {
    address immutable a = 0x0000000000000000000000000000000000000001;
    uint immutable x = 1;
}

contract B is A layout at A.a { }
contract C is A layout at A.x { }
// ----
// TypeError 1139: (138-141): The base slot of the storage layout must be a compile-time constant expression.
// TypeError 1139: (172-175): The base slot of the storage layout must be a compile-time constant expression.
