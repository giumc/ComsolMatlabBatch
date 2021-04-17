function val=get_param(obj,name)
    
    model=obj.model;
    
    val=model.param().get(name);
    
    if isstring(val)
        
        val=str2double(val);
        
    end
    
end