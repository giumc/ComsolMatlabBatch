function view_sp(obj)
    
    f=gcf;
    
    delete(f.Children)
    
    ax=axes;
    
    cols=inferno(length(obj.r)+1);
    
    for i= 1:length(obj.r)
        
        y_res=20*log10(abs(obj.r(i).y_meas));
        f_Mhz=obj.r(i).freq/1e6;
        
        p(i)=line(ax,f_Mhz,y_res);
        p(i).DisplayName=strcat(obj.sweep_param,' ',string(obj.sweep_value(i)),...
            ' ',obj.sweep_unit);
        
        p(i).Color=cols(i,:);
        
        p(i).LineWidth=1;
        
        ax.NextPlot='add';
        
    end
    
  l=legend(ax);
  l.Visible='on';
    