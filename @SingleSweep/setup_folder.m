function target_folder=setup_folder(obj)
    
    if isempty(obj.save_folder)
        
        obj.save_folder=uigetdir('choose save folder');
    
    end
    
    home_folder=obj.save_folder;

    tag_name=obj.sweep_param;
    
    target_folder=[home_folder,filesep,tag_name,'_sweep'];
    
    if isfolder(target_folder)
        
        files=dir(target_folder);

        files=files(~[files.isdir]);

        for i=1:length(files)

            delete(strcat(files(i).folder,filesep,files(i).name));

        end

    else
        
        mkdir(target_folder);
        
    end
    
end
    
   