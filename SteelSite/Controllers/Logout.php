<?php

namespace SteelSite\Controllers;

/**
 * Logout
 *
 * @module Controllers
 * @submodule Logout
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
class Logout extends \Steel\Controller
{
    public function get()
    {
        $this->attach('name', 'It works!!!');
        $this->attach('numbers', range(1, 25));
        $this->output();
    }
}
