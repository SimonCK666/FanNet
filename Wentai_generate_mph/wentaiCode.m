import com.comsol.model.*
import com.comsol.model.util.*
clear;

for i = 1:2

    % function out = model
    %
    % wentai_finally.m
    %
    % Model exported on Dec 4 2021, 09:14 by COMSOL 5.5.0.292.
    close all;
    clc;

    

    ModelUtil.showProgress(true);

    model = ModelUtil.create('Model');

    model.modelPath('D:\Comsol_Matlab_Test\Original_Model');

    model.component.create('comp1', true);

    model.component('comp1').geom.create('geom1', 3);

    model.component('comp1').mesh.create('mesh1');

    model.component('comp1').physics.create('solid', 'SolidMechanics', 'geom1');

    model.study.create('std1');
    model.study('std1').create('stat', 'Stationary');
    model.study('std1').feature('stat').activate('solid', true);

    model.component('comp1').geom('geom1').create('imp1', 'Import');
    model.component('comp1').geom('geom1').feature('imp1').set('filename', 'D:\BaiduNetdiskDownload\changfengye.stp');
    model.component('comp1').geom('geom1').feature('imp1').importData;
    model.component('comp1').geom('geom1').run;

    model.component('comp1').material.create('mat1', 'Common');
    model.component('comp1').material('mat1').label('E glass fiber [solid]');
    model.component('comp1').material('mat1').info.create([native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ]);
    model.component('comp1').material('mat1').info([native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ]).body('(52-56) SiO2, (12-16) Al2O3, (5-10) B2O3, (16-25) CaO, 5 MgO max, 2 Na2O + K2O max, 1.5 TiO2 max, 0.8 Fe2O3 max (wt%)');
    model.component('comp1').material('mat1').propertyGroup('def').set('Syt', 'Syt(T[1/K])[Pa]');
    model.component('comp1').material('mat1').propertyGroup('def').set('density', 'rho(T[1/K])[kg/m^3]');
    model.component('comp1').material('mat1').propertyGroup('def').func.create('Syt', 'Piecewise');
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').set('funcname', 'Syt');
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').set('arg', 'T');
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').set('extrap', 'constant');
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').set('pieces', {'88.0' '913.0' '5.616846E9-774812.8*T^1-41966.44*T^2+116.198*T^3-0.1241903*T^4+4.546186E-5*T^5'});
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').label('Piecewise');
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').set('fununit', '');
    model.component('comp1').material('mat1').propertyGroup('def').func('Syt').set('argunit', '');
    model.component('comp1').material('mat1').propertyGroup('def').func.create('rho', 'Piecewise');
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('funcname', 'rho');
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('arg', 'T');
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('extrap', 'constant');
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('pieces', {'293.0' '303.0' '2580.0'});
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').label('Piecewise 1');
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('fununit', '');
    model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('argunit', '');
    model.component('comp1').material('mat1').propertyGroup('def').addInput('temperature');
    model.component('comp1').material('mat1').propertyGroup.create('Enu', [native2unicode(hex2dec({'67' '68'}), 'unicode')  native2unicode(hex2dec({'6c' '0f'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'54' '8c'}), 'unicode')  native2unicode(hex2dec({'6c' 'ca'}), 'unicode')  native2unicode(hex2dec({'67' '7e'}), 'unicode')  native2unicode(hex2dec({'6b' 'd4'}), 'unicode') ]);
    model.component('comp1').material('mat1').propertyGroup('Enu').set('youngsmodulus', 'E(T[1/K])[Pa]');
    model.component('comp1').material('mat1').propertyGroup('Enu').set('poissonsratio', 'nu(T[1/K])');
    model.component('comp1').material('mat1').propertyGroup('Enu').func.create('E', 'Piecewise');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').set('funcname', 'E');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').set('arg', 'T');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').set('extrap', 'constant');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').set('pieces', {'293.0' '811.1' '6.712718E10+1.747573E7*T^1'});
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').label('Piecewise');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').set('fununit', '');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('E').set('argunit', '');
    model.component('comp1').material('mat1').propertyGroup('Enu').func.create('nu', 'Piecewise');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').set('funcname', 'nu');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').set('arg', 'T');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').set('extrap', 'constant');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').set('pieces', {'293.0' '783.1' '0.22'});
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').label('Piecewise 1');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').set('fununit', '');
    model.component('comp1').material('mat1').propertyGroup('Enu').func('nu').set('argunit', '');
    model.component('comp1').material('mat1').propertyGroup('Enu').addInput('temperature');
    model.component('comp1').material('mat1').propertyGroup.create('KG', [native2unicode(hex2dec({'4f' '53'}), 'unicode')  native2unicode(hex2dec({'79' 'ef'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'54' '8c'}), 'unicode')  native2unicode(hex2dec({'52' '6a'}), 'unicode')  native2unicode(hex2dec({'52' '07'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ]);
    model.component('comp1').material('mat1').propertyGroup('KG').set('G', 'mu(T[1/K])[Pa]');
    model.component('comp1').material('mat1').propertyGroup('KG').set('K', 'kappa(T[1/K])[Pa]');
    model.component('comp1').material('mat1').propertyGroup('KG').func.create('mu', 'Piecewise');
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').set('funcname', 'mu');
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').set('arg', 'T');
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').set('extrap', 'constant');
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').set('pieces', {'293.0' '783.1' '2.751114E10+7162184.0*T^1'});
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').label('Piecewise');
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').set('fununit', '');
    model.component('comp1').material('mat1').propertyGroup('KG').func('mu').set('argunit', '');
    model.component('comp1').material('mat1').propertyGroup('KG').func.create('kappa', 'Piecewise');
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').set('funcname', 'kappa');
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').set('arg', 'T');
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').set('extrap', 'constant');
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').set('pieces', {'293.0' '783.1' '3.995666E10+1.040222E7*T^1'});
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').label('Piecewise 1');
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').set('fununit', '');
    model.component('comp1').material('mat1').propertyGroup('KG').func('kappa').set('argunit', '');
    model.component('comp1').material('mat1').propertyGroup('KG').addInput('temperature');
    model.component('comp1').material('mat1').set('family', 'custom');
    model.component('comp1').material('mat1').set('lighting', 'cooktorrance');
    model.component('comp1').material('mat1').set('specular', 'custom');
    model.component('comp1').material('mat1').set('customspecular', [1 1 1]);
    model.component('comp1').material('mat1').set('diffuse', 'custom');
    model.component('comp1').material('mat1').set('customdiffuse', [1 1 1]);
    model.component('comp1').material('mat1').set('ambient', 'custom');
    model.component('comp1').material('mat1').set('customambient', [1 1 1]);
    model.component('comp1').material('mat1').set('fresnel', 0.99);
    model.component('comp1').material('mat1').set('roughness', 0.02);
    model.component('comp1').material('mat1').set('shininess', 200);
    model.component('comp1').material('mat1').set('alpha', 1);

    model.component('comp1').mesh('mesh1').automatic(false);
    model.component('comp1').mesh('mesh1').feature('size').set('hauto', 4);
    model.component('comp1').mesh('mesh1').run;

    model.component('comp1').physics('solid').create('fix1', 'Fixed', 2);
    model.component('comp1').physics('solid').feature('fix1').selection.set([18 26 32 34 35]);
    model.component('comp1').physics('solid').create('bndl1', 'BoundaryLoad', 2);
    model.component('comp1').physics('solid').feature('bndl1').selection.set([26]);
    FperArea_force = i * 100000000;
    model.component('comp1').physics('solid').feature('bndl1').set('FperArea', [0 FperArea_force 0]);

    model.sol.create('sol1');
    model.sol('sol1').study('std1');

    model.study('std1').feature('stat').set('notlistsolnum', 1);
    model.study('std1').feature('stat').set('notsolnum', '1');
    model.study('std1').feature('stat').set('listsolnum', 1);
    model.study('std1').feature('stat').set('solnum', '1');

    model.sol('sol1').create('st1', 'StudyStep');
    model.sol('sol1').feature('st1').set('study', 'std1');
    model.sol('sol1').feature('st1').set('studystep', 'stat');
    model.sol('sol1').create('v1', 'Variables');
    model.sol('sol1').feature('v1').set('control', 'stat');
    model.sol('sol1').create('s1', 'Stationary');
    model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
    model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').create('d1', 'Direct');
    model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'mumps');
    model.sol('sol1').feature('s1').feature('d1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'76' 'f4'}), 'unicode')  native2unicode(hex2dec({'63' 'a5'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').create('i1', 'Iterative');
    model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
    model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
    model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
    model.sol('sol1').feature('s1').feature('i1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'8f' 'ed'}), 'unicode')  native2unicode(hex2dec({'4e' 'e3'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').feature.remove('fcDef');
    model.sol('sol1').attach('std1');

    model.result.create('pg1', 'PlotGroup3D');
    model.result('pg1').set('data', 'dset1');
    model.result('pg1').create('surf1', 'Surface');
    model.result('pg1').feature('surf1').set('expr', {'solid.mises'});
    model.result('pg1').label([native2unicode(hex2dec({'5e' '94'}), 'unicode')  native2unicode(hex2dec({'52' '9b'}), 'unicode') ' (solid)']);
    model.result('pg1').feature('surf1').set('colortable', 'RainbowLight');
    model.result('pg1').feature('surf1').set('resolution', 'normal');
    model.result('pg1').feature('surf1').create('def', 'Deform');
    model.result('pg1').feature('surf1').feature('def').set('expr', {'u' 'v' 'w'});
    model.result('pg1').feature('surf1').feature('def').set('descr', [native2unicode(hex2dec({'4f' '4d'}), 'unicode')  native2unicode(hex2dec({'79' 'fb'}), 'unicode')  native2unicode(hex2dec({'57' '3a'}), 'unicode') ]);

    model.nodeGroup.create('dset1solidlgrp', 'Results');
    model.nodeGroup('dset1solidlgrp').label([native2unicode(hex2dec({'59' '16'}), 'unicode')  native2unicode(hex2dec({'52' 'a0'}), 'unicode')  native2unicode(hex2dec({'8f' '7d'}), 'unicode')  native2unicode(hex2dec({'83' '77'}), 'unicode') ' (solid)']);
    model.nodeGroup('dset1solidlgrp').set('type', 'plotgroup');
    model.nodeGroup('dset1solidlgrp').placeAfter('plotgroup', 'pg1');

    model.result.create('pg2', 'PlotGroup3D');
    model.result('pg2').set('data', 'dset1');
    model.result('pg2').label([native2unicode(hex2dec({'8f' 'b9'}), 'unicode')  native2unicode(hex2dec({'75' '4c'}), 'unicode')  native2unicode(hex2dec({'8f' '7d'}), 'unicode')  native2unicode(hex2dec({'83' '77'}), 'unicode') ' (solid)']);

    model.nodeGroup('dset1solidlgrp').add('plotgroup', 'pg2');

    model.result('pg2').set('showlegends', true);
    model.result('pg2').set('titletype', 'custom');
    model.result('pg2').set('typeintitle', false);
    model.result('pg2').set('descriptionintitle', false);
    model.result('pg2').set('unitintitle', false);
    model.result('pg2').set('frametype', 'spatial');
    model.result('pg2').set('showlegendsunit', true);
    model.result('pg2').create('surf1', 'Surface');
    model.result('pg2').feature('surf1').set('expr', {'1'});
    model.result('pg2').feature('surf1').label([native2unicode(hex2dec({'70' '70'}), 'unicode')  native2unicode(hex2dec({'82' '72'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'97' '62'}), 'unicode') ]);
    model.result('pg2').feature('surf1').set('coloring', 'uniform');
    model.result('pg2').feature('surf1').set('color', 'gray');
    model.result('pg2').feature('surf1').active(false);
    model.result('pg2').feature('surf1').create('def', 'Deform');
    model.result('pg2').feature('surf1').feature('def').set('expr', {'u' 'v' 'w'});
    model.result('pg2').feature('surf1').feature('def').set('descr', [native2unicode(hex2dec({'4f' '4d'}), 'unicode')  native2unicode(hex2dec({'79' 'fb'}), 'unicode')  native2unicode(hex2dec({'57' '3a'}), 'unicode') ]);
    model.result('pg2').feature('surf1').feature('def').set('scaleactive', true);
    model.result('pg2').feature('surf1').feature('def').set('scale', 0);
    model.result('pg2').create('arws1', 'ArrowSurface');
    model.result('pg2').feature('arws1').set('expr', {'solid.bndl1.F_Ax' 'solid.bndl1.F_Ay' 'solid.bndl1.F_Az'});
    model.result('pg2').feature('arws1').set('placement', 'gausspoints');
    model.result('pg2').feature('arws1').set('arrowbase', 'tail');
    model.result('pg2').feature('arws1').label([native2unicode(hex2dec({'8f' 'b9'}), 'unicode')  native2unicode(hex2dec({'75' '4c'}), 'unicode')  native2unicode(hex2dec({'8f' '7d'}), 'unicode')  native2unicode(hex2dec({'83' '77'}), 'unicode') ' 1']);
    model.result('pg2').feature.move('surf1', 1);
    model.result('pg2').feature('arws1').set('inheritplot', 'none');
    model.result('pg2').feature('arws1').create('col', 'Color');
    model.result('pg2').feature('arws1').feature('col').set('expr', 'comp1.solid.bndl1.F_A_Mag');
    model.result('pg2').feature('arws1').feature('col').set('colortable', 'Spectrum');
    model.result('pg2').feature('arws1').feature('col').set('coloring', 'gradient');
    model.result('pg2').feature('arws1').feature('col').set('topcolor', 'red');
    model.result('pg2').feature('arws1').set('color', 'red');
    model.result('pg2').feature('arws1').create('def', 'Deform');
    model.result('pg2').feature('arws1').feature('def').set('expr', {'u' 'v' 'w'});
    model.result('pg2').feature('arws1').feature('def').set('descr', [native2unicode(hex2dec({'4f' '4d'}), 'unicode')  native2unicode(hex2dec({'79' 'fb'}), 'unicode')  native2unicode(hex2dec({'57' '3a'}), 'unicode') ]);
    model.result('pg2').feature('arws1').feature('def').set('scaleactive', true);
    model.result('pg2').feature('arws1').feature('def').set('scale', 0);

    model.sol('sol1').runAll;

    model.result('pg1').run;

    model.component('comp1').physics('solid').feature('bndl1').selection.set([26]);

    model.sol('sol1').study('std1');

    model.study('std1').feature('stat').set('notlistsolnum', 1);
    model.study('std1').feature('stat').set('notsolnum', '1');
    model.study('std1').feature('stat').set('listsolnum', 1);
    model.study('std1').feature('stat').set('solnum', '1');

    model.sol('sol1').feature.remove('s1');
    model.sol('sol1').feature.remove('v1');
    model.sol('sol1').feature.remove('st1');
    model.sol('sol1').create('st1', 'StudyStep');
    model.sol('sol1').feature('st1').set('study', 'std1');
    model.sol('sol1').feature('st1').set('studystep', 'stat');
    model.sol('sol1').create('v1', 'Variables');
    model.sol('sol1').feature('v1').set('control', 'stat');
    model.sol('sol1').create('s1', 'Stationary');
    model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
    model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').create('d1', 'Direct');
    model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'mumps');
    model.sol('sol1').feature('s1').feature('d1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'76' 'f4'}), 'unicode')  native2unicode(hex2dec({'63' 'a5'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').create('i1', 'Iterative');
    model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
    model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
    model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
    model.sol('sol1').feature('s1').feature('i1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'8f' 'ed'}), 'unicode')  native2unicode(hex2dec({'4e' 'e3'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').feature.remove('fcDef');
    model.sol('sol1').attach('std1');
    model.sol('sol1').runAll;

    model.result('pg1').run;

    model.sol('sol1').study('std1');

    model.study('std1').feature('stat').set('notlistsolnum', 1);
    model.study('std1').feature('stat').set('notsolnum', '1');
    model.study('std1').feature('stat').set('listsolnum', 1);
    model.study('std1').feature('stat').set('solnum', '1');

    model.sol('sol1').feature.remove('s1');
    model.sol('sol1').feature.remove('v1');
    model.sol('sol1').feature.remove('st1');
    model.sol('sol1').create('st1', 'StudyStep');
    model.sol('sol1').feature('st1').set('study', 'std1');
    model.sol('sol1').feature('st1').set('studystep', 'stat');
    model.sol('sol1').create('v1', 'Variables');
    model.sol('sol1').feature('v1').set('control', 'stat');
    model.sol('sol1').create('s1', 'Stationary');
    model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
    model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').create('d1', 'Direct');
    model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'mumps');
    model.sol('sol1').feature('s1').feature('d1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'76' 'f4'}), 'unicode')  native2unicode(hex2dec({'63' 'a5'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').create('i1', 'Iterative');
    model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
    model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
    model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
    model.sol('sol1').feature('s1').feature('i1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'8f' 'ed'}), 'unicode')  native2unicode(hex2dec({'4e' 'e3'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').feature.remove('fcDef');
    model.sol('sol1').attach('std1');
    model.sol('sol1').runAll;

    model.result('pg1').run;

    model.component('comp1').physics('solid').feature('fix1').selection.set([18 32 34]);

    model.sol('sol1').study('std1');

    model.study('std1').feature('stat').set('notlistsolnum', 1);
    model.study('std1').feature('stat').set('notsolnum', '1');
    model.study('std1').feature('stat').set('listsolnum', 1);
    model.study('std1').feature('stat').set('solnum', '1');

    model.sol('sol1').feature.remove('s1');
    model.sol('sol1').feature.remove('v1');
    model.sol('sol1').feature.remove('st1');
    model.sol('sol1').create('st1', 'StudyStep');
    model.sol('sol1').feature('st1').set('study', 'std1');
    model.sol('sol1').feature('st1').set('studystep', 'stat');
    model.sol('sol1').create('v1', 'Variables');
    model.sol('sol1').feature('v1').set('control', 'stat');
    model.sol('sol1').create('s1', 'Stationary');
    model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
    model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').create('d1', 'Direct');
    model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'mumps');
    model.sol('sol1').feature('s1').feature('d1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'76' 'f4'}), 'unicode')  native2unicode(hex2dec({'63' 'a5'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').create('i1', 'Iterative');
    model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
    model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
    model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
    model.sol('sol1').feature('s1').feature('i1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'8f' 'ed'}), 'unicode')  native2unicode(hex2dec({'4e' 'e3'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').feature.remove('fcDef');
    model.sol('sol1').attach('std1');
    model.sol('sol1').runAll;

    model.result('pg1').run;
    model.result('pg1').run;

    model.sol('sol1').study('std1');

    model.study('std1').feature('stat').set('notlistsolnum', 1);
    model.study('std1').feature('stat').set('notsolnum', '1');
    model.study('std1').feature('stat').set('listsolnum', 1);
    model.study('std1').feature('stat').set('solnum', '1');

    model.sol('sol1').feature.remove('s1');
    model.sol('sol1').feature.remove('v1');
    model.sol('sol1').feature.remove('st1');
    model.sol('sol1').create('st1', 'StudyStep');
    model.sol('sol1').feature('st1').set('study', 'std1');
    model.sol('sol1').feature('st1').set('studystep', 'stat');
    model.sol('sol1').create('v1', 'Variables');
    model.sol('sol1').feature('v1').set('control', 'stat');
    model.sol('sol1').create('s1', 'Stationary');
    model.sol('sol1').feature('s1').feature('aDef').set('cachepattern', true);
    model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').create('d1', 'Direct');
    model.sol('sol1').feature('s1').feature('d1').set('linsolver', 'mumps');
    model.sol('sol1').feature('s1').feature('d1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'76' 'f4'}), 'unicode')  native2unicode(hex2dec({'63' 'a5'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').create('i1', 'Iterative');
    model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
    model.sol('sol1').feature('s1').feature('i1').set('rhob', 400);
    model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
    model.sol('sol1').feature('s1').feature('i1').label([native2unicode(hex2dec({'5e' 'fa'}), 'unicode')  native2unicode(hex2dec({'8b' 'ae'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'8f' 'ed'}), 'unicode')  native2unicode(hex2dec({'4e' 'e3'}), 'unicode')  native2unicode(hex2dec({'6c' '42'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'56' '68'}), 'unicode') ' (solid)']);
    model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
    model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').feature('so1').set('relax', 0.8);
    model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'd1');
    model.sol('sol1').feature('s1').feature('fc1').set('termonres', 'auto');
    model.sol('sol1').feature('s1').feature('fc1').set('reserrfact', 1000);
    model.sol('sol1').feature('s1').feature.remove('fcDef');
    model.sol('sol1').attach('std1');
    model.sol('sol1').runAll;

    model.result('pg1').run;
    
    str_i = num2str(i);
    name_base = 'wentai_test_m';
    name_full = sprintf("%s%s", name_base, str_i);
    name_suffix = ".mph";
    name = sprintf("%s%s", name_full, name_suffix);
    
    model.label(name);

    model.result('pg1').run;

    model.component('comp1').geom('geom1').run('imp1');
    model.component('comp1').geom('geom1').create('imp2', 'Import');
    model.component('comp1').geom('geom1').feature.remove('imp2');
    model.component('comp1').geom('geom1').run;

    mphgeom(model,'geom1');


    mphsave(model, name_full); % ??mph????????
    % out = model;
end
