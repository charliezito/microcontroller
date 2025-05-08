AREA enable_irq, CODE, READONLY
ENTRY
    MRS R1, CPSR       
    BIC R1, R1, #0x80  
    MSR CPSR_c, R1     
EXIT
    B EXIT
    END