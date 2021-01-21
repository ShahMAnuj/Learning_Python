import math

def data_elements(L):
    '''
    This function calculates r (number of data elements per signal element)
    based on one value:
        L (number of signal elements needed)
    The unit of r is bits/baud. 
    '''
	r = math.log(L,2)
    return r
    
def hartley(N,L):
    '''
    This function calculates Bmin (minimum Bandwidth for ISI free transmission)
    based on two values:
        1. N (data rate) in bits/s or kbits/s
        2. L (number of signal elements needed)
    The unit of Bmin is Hz or kHz respectively (depending on units of N).  
    '''
    Bmin = N/(2*data_elements(L))
    return Bmin
    
def nyquist_isi(S):
    '''
    This function calculates Bmin (minimum Bandwidth for ISI free transmission) based on one value:
        S (signal rate) in bauds/s
    The unit of Bmin is Hz.
    '''
    Bmin = S/2
    return Bmin
    
def signal_rate(N,r):
    '''
    This function calculates S (signal rate) based on two values:
        1. N (data rate) in bits/s
        2. r (number of data elements per signal element) in bits/baud
    The unit of S is bauds/s. 
    '''
    S = N/r
    return S