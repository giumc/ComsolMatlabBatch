function params=get_params_name(obj)
    
    model=obj.model;
    
    params=model.param().varnames();
     
end