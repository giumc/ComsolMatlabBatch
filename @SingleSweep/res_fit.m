function r=res_fit(obj,filename)
    
    r=Resonator('file',filename);
    
    r.max_modes=8;
    
    r.fit_routine;
    
end