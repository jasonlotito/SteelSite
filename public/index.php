<?php
namespace Funk;

// It's probably best that Steel is added to the path in PHP.  If this isn't possible, you can set it
// by calling setIncludePath().  You can also add in additional include paths.
require '../Steel/Bootstrap.php';

// Steel\Bootstrap assumes that it's location is in the base directory of Steel.
$bootstrap = \Steel\Bootstrap::init()->setIncludePath();


\Steel\Application::start()->run();
