// Fowarding unit inside of decode phase of the pipeline
// Prevents data hazards by modifying behavior using signals when
// 1. Instruction in MEM stage wants to write to register and the result from the result from the EX stage is the value being written back (addi).
//      register_write_enable & !writeback
// 2. Instruction in MEM stage wants to write the value from the MEM stage (lw).
//      register_write_enable & writeback
