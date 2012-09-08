<?php
namespace Steel;

// It's probably best that Steel is added to the path in PHP.  If this isn't possible, you can set it
// by calling setIncludePath().  You can also add in additional include paths.
require '../Steel/Bootstrap.php';

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
        $this->importConfig($config);
        $this->loadBootstrap();
        var_dump($this->config);
    }

    /**
     * Load the Bootstrap File
     *
     * @return void
     */
    protected function loadBootstrap()
    {
        \Steel\Bootstrap::init();
    }

    /**
     * Import the configuration
     *
     * @param array $config
     * @return void
     */
    protected function importConfig(array $config)
    {
        $this->config = [
            'applicationConf' => (boolean) $config['STEEL_APPLICATION_CONF'],
            'applicationDebug' => (boolean) $config['STEEL_APPLICATION_DEBUG'],
            'applicationDir' => $config['STEEL_APPLICATION_DIR'],
            'applicationEnv' => $config['STEEL_APPLICATION_ENV'],
            'configCore' => $config['STEEL_CONFIG_CORE'],
            'configDir' => $config['STEEL_CONFIG_DIR'],
            'configExt' => $config['STEEL_CONFIG_EXT'],
            'errorDisplay' => $config['STEEL_ERROR_DISPLAY'],
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
