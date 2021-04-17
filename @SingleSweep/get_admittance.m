function [f,y]=get_admittance(obj)
    
    model=obj.model;
    f=mphglobal(model,'freq','dataset','dset1');
    
    y=mphglobal(model,'es.I0_1/es.V0_1','dataset','dset1');
    
end