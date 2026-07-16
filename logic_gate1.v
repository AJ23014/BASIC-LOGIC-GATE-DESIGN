// Lab 1: Basic Gates Implementation
// Date: Feb 2026
module my_gates(
    input a_in, b_in,
    output res_and, res_or, res_xor, res_nand, res_nor, res_xnor, res_not
);

    // explicit primitive gate instantiations
    and gate1 (res_and, a_in, b_in);
    or  gate2 (res_or, a_in, b_in);
    xor gate3 (res_xor, a_in, b_in);
    
    nand gate4 (res_nand, a_in, b_in);
    nor  gate5 (res_nor, a_in, b_in);
    xnor gate6 (res_xnor, a_in, b_in);
    
    not  gate7 (res_not, a_in);

endmodule
