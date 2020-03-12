# Sight deception

After testing this pyhton code, it does indeed transform a string input to a whitespace codeprinting it.

After checking some other things, we realized th spaces and tabs of the code included in this file seemed to form another whitespace code, hidden in the python one!

Unfortunately, wen put on our online computer, we got an error on line 49-3, and could'nt fix the whitespace code. On the other hand, some code was already put inot assembly on the debugger at the right of our screen, by pushing the instruction, we got a stack full of integer number.

By converting those to ASCII and removing the "bad" character, we obtain something looking like a reversed flag, after reversing it we obtain: CSC{1ts_3v3n_h@rd3r_t0_s33}

note: the whitespace ide used is called whitelips and can be found at https://vii5ard.github.io/whitespace/