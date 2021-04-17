function clear_content_folder(obj)
    
    folder=obj.save_folder;
    
    files=dir(folder);
    
    files=files(~[files.isdir]);
    
    for i=1:length(files)
        
        delete(strcat(files(i).folder,filesep,files(i).name));
        
    end
    
end