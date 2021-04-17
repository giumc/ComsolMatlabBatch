function x=save_sparam(obj,filename)
    
    x=0;
    [f,y]=obj.get_admittance;
    
    ypar=yparameters(y,f);
    
    spar=sparameters(ypar,50);
    
    rfwrite(spar,filename);
    
    x=1;
end