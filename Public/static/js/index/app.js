Ext.Loader.setConfig({enabled:true});
//Ext.Loader.setPath({
//	'Ext.ux':'/Public/static/js/ExtJs/ux'
//});
//Ext.require([
//	'Ext.ux.form.CkEditor'
//]);
Ext.application({
	name: 'admin',
	appFolder: '../../Public/static/js/index',
	autoCreateViewport: true,
	controllers: [
		'MainController',
		'UserController',
		'ConfigNetsetController',
		'ConfigDbsetController',
		'GradeController',
		'ChartLineController',
		'ChartBarController'
	]
});