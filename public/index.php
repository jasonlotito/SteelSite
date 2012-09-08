<?php

spl_autoload_register(function( $name ){
    require_once str_replace('\\', '/', $name) . '.php';
});

set_include_path(
    __DIR__ . '/../' .
    get_include_path()
);

Steel\Application::start()->run();
