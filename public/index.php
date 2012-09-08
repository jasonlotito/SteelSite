<?php
namespace Funk;

foreach ( $_SERVER as $key => $value )
{
    if ( stristr( $key, 'STEEL' ) )
    {
        echo "$key : $value <br>";
    }
}

define('CONFIG_FILE', __DIR__ . '/../config.xml');

// It's probably best that Steel is added to the path in PHP.  If this isn't possible, you can set it
// by calling setIncludePath().  You can also add in additional include paths.
require '../Steel/Bootstrap.php';

// Steel\Bootstrap assumes that it's location is in the base directory of Steel.
$bootstrap = \Steel\Bootstrap::init();
echo get_include_path();

\Steel\Application::start(CONFIG_FILE)->run();
