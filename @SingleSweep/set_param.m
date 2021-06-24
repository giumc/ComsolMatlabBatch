function x= set_param(obj,param,value,varargin)
    
    x=0;
        
    model=obj.model;
    
    try
        
        model.param().get(param);
        
    catch ME
        
        
        error("param not valid");
        
    end
        
    if ~isstring(value)
        
        value=string(value);
        
    end
    
    if isempty(varargin)
        
        unit='';
        
    else
        
        unit=varargin{1};
        
    end
    
    model.param().set(param,strcat(string(value),unit));
    
    x=1;
    
end