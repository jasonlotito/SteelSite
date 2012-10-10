<?php

namespace SteelSite\Controllers;

use Steel\Injectors\Request;
use Steel\Controller\Events\Flushed;
use Steel\Injectors\Event;

/**
 * Home
 *
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
class Home extends \Steel\Controller
{
    use Request;
    use Event;

    public function __construct()
    {
        $this->templateName = 'Home';
        parent::__construct();
    }

    public function get()
    {
        $html = new \Steel\Request\Header\Accepts\HTML();

        $this->onEvent(new Flushed(), function(){
           echo '<h1>yes</h1>';
        });

        $this->getRequest()->accepts($html);
        $this->attach('name', 'Jason');
        $this->output();
    }
}
