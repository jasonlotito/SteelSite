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
        $this->attach('numbersD', array('data'=>range(26,50)));
        $this->attach('keyNames', array('codes'=>range(1,10), 'names'=>['Jason', 'Bob']));
        $this->attach('alt', array('numbers'=>range(1,5)));
        $this->output();
    }
}
