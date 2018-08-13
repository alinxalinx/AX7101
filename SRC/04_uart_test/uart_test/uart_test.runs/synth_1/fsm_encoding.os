
 add_fsm_encoding \
       {uart_rx.state} \
       { }  \
       {{001 000} {010 001} {011 010} {100 011} {101 100} }

 add_fsm_encoding \
       {uart_tx.state} \
       { }  \
       {{001 00} {010 01} {011 10} {100 11} }
