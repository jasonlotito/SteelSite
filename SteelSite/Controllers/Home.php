<?php

namespace SteelSite\Controllers;

/**
 * Home
 *
 * ${DESCRIPTION}
 *
 * @module ${MODULE}
 * @submodule ${SUBMODULE}
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
class Home extends \Steel\Controller
{
    public function __construct()
    {
        $this->templateName = 'Home';
        parent::__construct();
    }

    public function get()
    {
        $this->attach('name', 'Jason');
        $this->output();
    }
}
