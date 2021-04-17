classdef SingleSweep<handle
    
    properties
        
        model ;
        
        study ;
        
        sweep_param ;
        
        save_folder ;
        
        sweep_value;
        
        sweep_unit;
        
        r Resonator;
        
        param_table;
        
    end
    
    methods
        
        function obj=SingleSweep(varargin)
            
%             ModelUtil.showProgress(true);
            
        end
        
    end
    
    methods
        
        set_freq_span_MHz(obj,fmin,fmax,fstep);
        
        x= get_params_name(obj);
        
        x= get_params_table(obj);
        
        x= set_param(obj,param,value,unit);
        
        x= get_param(obj,name);
        
        function run_study(obj)
            
            obj.study.run();
            
        end
        
        [f,y]=get_admittance(obj);
        
        x= save_sparam(obj,filename);
        
        r=res_fit(obj,filename);
        
        run_loop(obj);
        
        clear_content_folder(obj);
        
        f=analyze_data(obj);

        see_fit(obj);
        
        refit_all(obj);
        
        plot_all(obj);
        
    end
        
end