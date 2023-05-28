<?php
$_TEMPLATE_SERVICES_PATH = './src/services/';
$radapter = new RAdapter($router, $_TEMPLATE_SERVICES_PATH, $_ENV['HTTP_DOMAIN']);

// CONFIGURATION
$radapter->getHTML('/api/configuration', 'configuration');

// INFO
// $radapter->post('/api/info/select', fn (...$args) => InfoService::select(...$args));

// USER
$radapter->post('/api/user/login', fn (...$args) => UserService::login(...$args));
$radapter->post('/api/user/logout', fn (...$args) => UserService::logout(...$args));
$radapter->post('/api/user/select', fn (...$args) => UserService::select(...$args));
$radapter->post('/api/user/insert', fn (...$args) => UserService::insert(...$args));
$radapter->post('/api/user/update', fn (...$args) => UserService::update(...$args));
$radapter->post('/api/user/delete', fn (...$args) => UserService::delete(...$args));

// SURVEY
$radapter->post('/api/survey/select', fn (...$args) => SurveyService::select(...$args));
$radapter->post('/api/survey/insert', fn (...$args) => SurveyService::insert(...$args));
$radapter->post('/api/survey/update', fn (...$args) => SurveyService::update(...$args));
$radapter->post('/api/survey/delete', fn (...$args) => SurveyService::delete(...$args));
