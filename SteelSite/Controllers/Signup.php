<?php

namespace SteelSite\Controllers;

/**
 * Signup
 *
 * @module Controllers
 * @submodule Signup
 * @author Jason Lotito <jasonlotito@gmail.com>
 */
/**
 * Signup Controller
 */
class Signup extends \Steel\Controller
{
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->templateName = 'Signup';
        parent::__construct();
    }

    /**
     * GET /signup
     */
    public function get()
    {
        $form = new \Steel\View\Form();
        $form->addInput( 'First Name', 'firstName' , 'Jason');
        $form->addInput( 'Last Name', 'lastName', 'Lotito' );
        $form->addInput(['name'=>'email', 'id'=>'inputEmail','label'=>'Email Address', 'placeholder' => 'test@example.com']);
        $this->attach('form', $form->render());


//        $form->output();
        $this->output();
    }
}
