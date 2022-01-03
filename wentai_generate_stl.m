close all;
clc;
clear;

mph_basic_name = 'wentai_test_m';
mph_basic_suffix = '.mph';

stl_basic_name = "wentai_mesh_stl_";
stl_basic_suffix = ".stl";

for i = 1:2
    str_i = num2str(i);
    stl_name_full = [mph_basic_name, str_i, mph_basic_suffix]
    % nn = "wentai_test_m1.mph";
    % model = mphopen('wentai_test_m1.mph');
    model = mphopen(stl_name_full);
    model.component('comp1').mesh('mesh1').run;
    [s,d] = mphmeshstats(model, 'mesh1');
    idx = strcmp(s.types, 'tri');
    pdmesh.p = d.vertex;
    pdmesh.t = d.elem{idx};
    export_name = sprintf("%s%s%s", stl_basic_name, str_i, stl_basic_suffix);
    mphwritestl(export_name, pdmesh);
    
end