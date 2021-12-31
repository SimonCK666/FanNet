close all;
clc;

% ?? Library
import com.comsol.model.*
import com.comsol.model.util.*

% ?????????????????????????
ModelUtil.showProgress(true);

% model = mphopen("wind_original.mph");

% create model
% model = ModelUtil.create('Model');
% ????????????Matlab??
% model = ModeUtil.mode('Mode');

% load the .mph file
model = mphload('wentai.mph');

% mphsave 

% Matlab
mphgeom(model)
% check mesh
mphmesh(model)

% open gui !mphnavigator

% ?? model ??
% mphgetexpressions(model.paras) % no expression
