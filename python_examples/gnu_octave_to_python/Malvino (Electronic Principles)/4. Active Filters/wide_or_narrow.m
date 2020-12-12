%{
This function determines whether a bandpass filter
is a wideband filter or a narrowband filter,
based on two input values:
    1. f1 (lower cutoff frequency) in Hz.
    2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively. 
%}

function wide_or_narrow(f1,f2)
Q = q_factor(f1,f2);

if Q < 1
  fprintf("Because Q < 1, thus wideband filter.\n"); 
else 
  fprintf("Because Q > 1, thus narrowband filter.\n");
endif  
endfunction