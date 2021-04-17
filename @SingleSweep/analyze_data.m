function f=analyze_data(obj)
   
    f=gcf;
    
%     defaultgraph;
    
    delete(f.Children);
    
    param_set=obj.sweep_value;
    
    xlab=strcat(obj.sweep_param,obj.sweep_unit);
    
    xlimits=[min(obj.sweep_value)-0.1 max(obj.sweep_value)+0.1];

    set(groot,'defaultAxesFontSize',14);
    
    len=150e-6;
    
    for i=1:length(obj.r)

        r=obj.r(i);

        kt2(i)=r.mode(1).kt2.value;
        
        c0(i)=r.c0.value;
        
        fres(i)=r.mode(1).fres.value;

    end

    aspectratio=[3,1,1];

    delete(f.Children);
    
    ax1=subplot(3,1,1);
    
    set(groot,'defaultStemMarker','square');
    set(groot,'defaultStemMarkerSize',8);
    set(groot,'defaultStemLineStyle','none');
    set(groot,'defaultStemMarkerFaceColor','k');
    set(groot,'defaultStemMarkerEdgeColor','k');
    p=stem(ax1,param_set,kt2*100);
    p.LineStyle='none';
    
    xlabel(xlab);
    ax1.XLabel.Interpreter='none';
    ylabel('k_t^2[%]');
    ax1.PlotBoxAspectRatio=aspectratio;
    xlim(xlimits);
    ylim([min(kt2*100) max(kt2*100)]);
    ax2=subplot(3,1,2);
    q=stem(ax2,param_set,c0/150e-6/1e-12);
    q.LineStyle='none';
    
    xlabel(xlab);
    ax2.XLabel.Interpreter='none';
    ylabel('C_0 [pF*m]');
    ax2.PlotBoxAspectRatio=aspectratio;
    % ylim([500 800]);
    xlim(xlimits);
    ylim([min(c0/len/1e-12) max(c0/len/1e-12)]);
    ax3=subplot(3,1,3);
    r=stem(ax3,param_set,fres/1e6);
    r.LineStyle='none';
    
    xlabel(xlab);
    ax3.XLabel.Interpreter='none';
    ylabel('F_{res} [MHz]');
    xlim(xlimits);
    ax3.PlotBoxAspectRatio=aspectratio;

    ylim([min(fres/1e6) max(fres/1e6)]);

end