<?php
namespace Steel;

// It's probably best that Steel is added to the path in PHP.  If this isn't possible, you can set it
// by calling setIncludePath().  You can also add in additional include paths.
require '../Steel/Bootstrap.php';

use Steel\Anvil\Events\Debug;
use Steel\Controller\Events\Flushed;

/**
 * Anvil
 * Everything runs through Anvil.  It get's hit quite a bit.
 *
 * @module Anvil
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
class Anvil
{
    /**
     * @var array
     */
    protected $config;

    /**
     * @param array $config
     */
    public function __construct(array $config)
    {
        $this->initConfig($config);
        $this->initBootstrap();
        $this->initDebug();
    }

    /**
     * Load the Bootstrap File
     *
     * @return void
     */
    protected function initBootstrap()
    {
        \Steel\Bootstrap::init();
    }

    protected function initDebug()
    {
        \Steel\Event::on(new Debug(), array($this, 'debug'));
        \Steel\Event::on(new Flushed(), array($this, 'debug'));
    }

    public function debug( )
    {
        static $x = 0;
        $x++;
        $response = new \Steel\Response();
        $view = \Steel\View::create('Debug');
        $view->attach('data', range(0,20));
        $view->render();
    }

    /**
     * Import the configuration
     *
     * @param array $config
     * @return void
     */
    protected function initConfig(array $config)
    {
        $this->config = [
            // _ENGINE : Steel configuration
            'allowUrlMethods' => (boolean) $config['STEEL_ENGINE_ALLOW_URL_METHODS'],

            // _APPLICATION : Application configuration
            'applicationBase' => $config['STEEL_APPLICATION_BASE'],
            'applicationConf' => (boolean) $config['STEEL_APPLICATION_CONF'],
            'applicationDebug' => (boolean) $config['STEEL_APPLICATION_DEBUG'],
            'applicationDir' => $config['STEEL_APPLICATION_DIR'],
            'applicationEnv' => $config['STEEL_APPLICATION_ENV'],

            // _CONFIG : Configuration file config
            'configCore' => $config['STEEL_CONFIG_CORE'],
            'configDir' => $config['STEEL_CONFIG_DIR'],
            'configExt' => $config['STEEL_CONFIG_EXT'],
            'configFiles' => $config['STEEL_CONFIG_FILES'],

            // _ERROR : Error handling config
            'errorDisplay' => (int) $config['STEEL_ERROR_DISPLAY'],

            // _LIB : Steel library config
            'libDir' => $config['STEEL_LIB_DIR'],
        ];
    }

    /**
     * Dispatcher
     *
     * @return void
     */
    public function dispatch()
    {
        Application::start($this->config)->run();
    }
}

( new Anvil( $_SERVER ) )->dispatch();
