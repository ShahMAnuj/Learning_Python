def bandwidth(f1,f2):
    '''
    This function calculates BW (BandWidth) based on two input values:
        1. f1 (lower cutoff frequency) in Hz/kHz/etc.
        2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively.
    The unit of BW is Hz/kHz/etc respectively. 
    '''
	BW = f2 - f1
	return BW
    
def centre_frequency(f1,f2):
    '''
    This function calculates f0 (centre frequency)  based on two input values:
        1. f1 (lower cutoff frequency) in Hz/kHz/etc.
        2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively.
    The unit of f0 is Hz/kHz/etc respectively. 
    '''
    f0 = sqrt(f1*f2)
    return f0
    
def cutoff_frequency(R1,C1):
    '''
    This function calculates fc (cutoff frequency) based on two input values:
        1. R1 (Resistance) in kOhm.
        2. C1 (Capacitance) in nF.
    The unit of fc. 
    '''
    fc = (10^6)/(2*pi*R1*C1)
    return fc
    
def number_of_ripples(n):
    '''
    This function calculates NOR (Number of Ripples) of a Chebyshev filter  based on one input value:
        n (order of the Chebyshev filter ~ number of capacitors it contains)
    NOR is a unitless quantity.
    '''
    NOR = n/2
    return NOR
    
def q_factor(f1,f2):   
    '''
    This function calculates Q (Quality factor) for an ideal bandpass filter based on two input values:
        1. f1 (lower cutoff frequency) in Hz.
        2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively.
    Q is a unitless quantity. 
    '''
    Q = centre_frequency(f1,f2)/bandwidth(f1,f2)
    return Q
    
def q_factor_2(L,C,R):
    '''
    This function calculates Q (Quality factor) for a 2nd-order LC filter based on two input values:
        1. L (inductance) in mH.
        2. C (capacitance) in uF.
        3. R (resistance) in ohms.
    Q is a unitless quantity.    
    '''
    f0 = resonant_frequency(L,C)/1000
    Q = R/(2*pi*f0*L)
    return Q
    
def resonant_frequency(L,C):
    '''
    This function calculates f0 (resonant frequency) based on two input values:
        1. L (inductance) in mH.
        2. C (capacitance) in uF.
    The unit of f0 is Hz. 
    '''
    f0 = (10^(4.5))/(2*pi*sqrt(L*C))
    return f0
    
def roll_off_rate(n):
    '''
    This function calculates ROR (Roll-Off Rate) of a Butterworth filter based on one input value:
        n (order of the Butterworth filter ~ number of capacitors it contains)
    The unit of ROR is dB/decade.
    '''
    ROR = 20*n
    return ROR
    
def wide_or_narrow(f1,f2):
    '''
    This function determines whether a bandpass filter is a wideband filter or a narrowband filter,
    based on two input values:
    1. f1 (lower cutoff frequency) in Hz.
    2. f2 (upper cutoff frequency) in Hz/kHz/etc respectively. 
    '''
    Q = q_factor(f1,f2)
    if Q < 1:
        print("Because Q < 1, thus wideband filter")
    else:
        print("Because Q > 1, thus narrowband filter")