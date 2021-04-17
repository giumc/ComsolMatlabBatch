function fig=plot_all(obj)
    
    r=obj.r;
    fig=figure;
    ax=axes;
   
    colors=fake_parula(length(r)+2);
    for i=1:length(r)
        
        f=r(i).freq/1e6;
        y=r(i).y_meas;
        
        name=strcat(num2str(round(obj.sweep_value(i),3)),obj.sweep_unit);
        p(i)=line(ax,f,dbmag(y),'DisplayName',name);
        p(i).Color=colors(i,:);
        ax.NextPlot='add';
        
    end

    xlims=ax.XLim;
    ax.XTick=round(linspace(min(xlims), max(xlims),7),1);
    
    l=legend(ax);
    l.Title.Interpreter='none';
    l.FontSize=14;
    l.Title.String=obj.sweep_param;
    l.Visible='on';
    l.Location='southeastoutside';
    
end
        
        