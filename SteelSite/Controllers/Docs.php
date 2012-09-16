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
class Docs extends \Steel\Controller
{
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->templateName = 'DocTemplates/Forms';
        parent::__construct();
    }

    public function index()
    {
        $this->setTemplate('DocTemplates/Index');
        $this->output();
    }

    /**
     * GET /signup
     */
    public function forms()
    {
        $form = new \Steel\View\Form();
        $form->addInput('First Name', 'firstName', 'Jason');
        $form->addInput('Last Name', 'lastName', 'Lotito');
        $form->addInput([
            'name' => 'email',
            'id' => 'inputEmail',
            'label' => 'Email Address',
            'placeholder' => 'test@example.com',
            'error' => true
        ]);
        $form->addTextArea('Message', 'message', 'This is existing values.');
        $this->attach('form', $form->render());

        $this->output();
    }
}
