function init(obj)
    
    files=dir;
   
    j=0;
    
    goodindex=[];
    
    for i=1:length(files)
        
        if endsWith(files(i).name,'.mph')
    
            j=j+1;
            
            goodindex(j)=i;
           
        end
        
    end
    
    if length(goodindex)==1
        
        goodfile=files(goodindex);
        
        obj.model=mphload([goodfile.folder,filesep,goodfile.name]);
        
        obj.tag=strrep(goodfile.name,'.mph','');
        
        obj.save_folder=goodfile.folder;
        
        fprintf(sprintf('model %s initialized...\n',goodfile.name));
        fprintf(sprintf('tag %s initialized...\n',obj.tag));
        fprintf(sprintf('save folder initialized ...\n',obj.save_folder));
           
    else
        
        fprintf('no model initialized...\n');
        fprintf('no tag initialized...\n');
        fprintf('no folder initialized...\n');

    end
    
end
        
        