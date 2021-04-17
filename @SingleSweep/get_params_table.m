function tab=get_params_table(obj)
    
    model=obj.model;
    
    params=obj.get_params_name;
    
    for i=1:length(params)
        
        param_name(i)=params(i);
        param_val(i)=model.param().get(params(i));
        
    end
    
    tab=table(string(param_name),string(param_val));
    
end
    