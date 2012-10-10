<?php

namespace SteelSite\Controllers;

/**
 * Facebook
 *
 * ${DESCRIPTION}
 *
 * @module ${MODULE}
 * @submodule ${SUBMODULE}
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
class Facebook extends \Steel\Controller
{
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->templateName = 'Facebook';
        parent::__construct();
    }

    public function get()
    {
        file_put_contents('/www/chainsw.com/logs/log.txt', json_encode([$_GET,$_POST]));
    }

    public function signup()
    {
        $this->output();
    }
}
