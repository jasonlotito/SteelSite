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
class Error
{
    use \Steel\Injectors\Response;

    public function notFound()
    {
        $this->getResponse()->notFound();
        echo "This is a 404 page";
    }
}
