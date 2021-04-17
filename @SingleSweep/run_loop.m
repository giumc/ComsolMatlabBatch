function run_loop(obj)
    
    if isempty(obj.save_folder)
        
        obj.save_folder=uigetdir('choose save folder');

    end
    
    obj.clear_content_folder;
    
    param_name=obj.sweep_param;
    
    param_set=obj.sweep_value;

    param_unit=obj.sweep_unit;
    
    filename_base=strcat(obj.save_folder,filesep,...
        strrep(string(obj.model.name),'.mph',strcat('_',param_name,'_')));
    
    obj.param_table=obj.get_params_table();

    
    for i=1:length(param_set)

        itermsg=sprintf('Running Sweep Part %d\n',i);
        fprintf(itermsg);
    
        obj.set_param(param_name,param_set(i),param_unit);
        
        obj.run_study();
        
        filename=strcat(filename_base,string(param_set(i)),'.s1p');
        
        obj.save_sparam(filename);
        
        obj.r(i)=obj.res_fit(filename);
        
        clear_from_cw(itermsg);
        
    end

        writetable(obj.param_table,strcat(obj.save_folder,filesep,'params.txt'));

        batchdata=obj;
        
        save(strcat(obj.save_folder,filesep,'data.mat'),'batchdata');
        
        mphsave(obj.model);

    end

