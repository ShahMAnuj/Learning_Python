def charge_density(OT,BAT):
    '''
    This program calculates CD (Charge Density) based on three values:
        1. DCSD (Dielectric Constant for Silicon Dioxide) in F/cm.
        2. OT (Oxide Thickness) in nm.
        3. BAT (Bias Above Threshold) in V.
    The units of CD are C/cm^2.    
    '''
    DCSD = 3.9 * 8.854 * (10**(-14))
    CD = (10**7) * (DCSD/OT) * BAT
    return CD

def device_transconductance(W,L,PT):
    '''
    This function calculates DT (Device Transconductance)
    based on three input values:
       1. W (Width) in um.
       2. L (Length) in um.
       3. PT (Process Transconductance) in uA/V^2.
    The units of DT are uA/V^2.   
    '''
    AR = W/L #AR (Aspect Ratio)
    DT = PT*AR
    return DT

def drain_current(Vgs,Vt,Vds,DT):
    '''
    This function calculates Id (drain current) 
    based on four input values:
        1. Vgs (gain-source Voltage) in V.
        2. Vt (threshold Voltage) in V.
        3. Vds (drain-source Voltage) in V.
        4. DT (Device Transconductance) in uA/V^2.
    The units of DT are uA. 
    '''
    if Vgs < Vt:
        Id = 0 
        print("Cutoff region")
    else:
        if Vgs - Vt > Vds:
            Id = DT * (Vgs - Vt - 0.5 * Vds) * Vds
            print("Triode region")     
        else:
            Id = 0.5 * DT * (Vgs - Vt)**2
            print("Saturation region")            
    return Id 

def electron_velocity(EM,EF):
    '''
    This program calculates EV (Electron Velocity) based on two values:
        1. EM (Electron Mobility) in cm^2/Vs.
        2. EF (Electric Field) in V/cm.
    The units of EV are cm/s.    
    '''
    EV = EM * EF
    return EV    
    
def on_resistance(PT,AR,Vgs,Vt):
    '''
    This function calculates Ron (on Resistance) based on four values:
        1. PT (Process Transcondutance) in uA/V^2.
        2. AR (Aspect Ratio) which is unitless
        3. Vgs (gain-source Voltage) in V.
        4. Vt (threshold Voltage) in V.
    The unit of Ron is kOhm.
    '''
    DT = PT * AR #DT (Device Transconductance)
    Ron = (10**3)/(DT * (Vgs - Vt))
    return Ron
    
def process_transconductance(EM,OT):
    '''
    This program calculates PT (Process Transconductance) based on three values:
        1. DCSD (Dielectric Constant for Silicon Dioxide) in F/cm.
        2. EM (Electron Mobility) in cm^2/Vs.
        3. OT (Oxide Thickness) in nm.
    The units of PT are uA/V^2.    
    '''
    DCSD = 3.9 * 8.854 * (10**(-14))
    PT = (10**(13)) * (DCSD/OT) * EM
    return PT
    