function set_freqs_with_unit(obj,f,unit)

    model=obj.model;
 
    model.study('std1').feature('freq').set('plist',f);
    model.study('std1').feature('freq').set('punit',unit);

end