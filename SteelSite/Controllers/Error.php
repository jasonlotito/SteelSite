<?php

namespace SteelSite\Controllers;

/**
 * Error
 *
 * ${DESCRIPTION}
 *
 * @module ${MODULE}
 * @submodule ${SUBMODULE}
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
class Error extends \Steel\Controller
{
    use \Steel\Injectors\Response;

    public function notFound()
    {
        $this->view = $this->getView('NotFound');
        $this->getResponse()->notFound();
        $this->output();
    }
}
