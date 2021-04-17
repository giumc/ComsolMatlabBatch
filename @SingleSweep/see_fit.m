function see_fit(obj)
    
    res=obj.r;
    
    for i=1:length(res)
        
        res(i).setup_gui('minimal');
        
        pause;
        
        res(i).delete_gui;
        
    end
    
end