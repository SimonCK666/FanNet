close all;
clc;

% ?? Library
import com.comsol.model.*
import com.comsol.model.util.*


ModelUtil.showProgress(true);

% create a comsol model
% create_model = ModelUtil.create('create_model');

% load the .mph file
model = mphload('test.mph');

% show model
mphplot(model);

% get comp1
comp1 = model.component('comp1');


% create mesh
mesh2 = comp1.mesh.create('mesh2');
ftri1 = mesh2.feature.create('ftri1', 'FreeTri');
mesh2.run;
% show mesh
mphmesh(mesh2);

model.physics('solid');

print(model)

hs = phys.feature.create('hs1', 'HeatSource', 3);
% save model
% mphsave(model, <filename>);


