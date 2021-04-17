function refit_all(obj)
    
    r=obj.r;
    
    for i=1:length(r)
        
        r.reset;
        
        r.fit_routine;
        
    end
    
end
    
    