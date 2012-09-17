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
        $form->addInput('First Name', 'firstName', 'Pre-filled value');
        $form->addInput(
            [
                'name' => 'lName',
                'label' => 'Last Name',
                'description' => 'This is a description.',
                'error' => false
            ]
        );
        $form->addInput(
            [
                'name' => 'lName',
                'label' => 'Last Name',
                'description' => 'This is a description.  It\'s longer than a normal description.',
                'error' => false
            ]
        );
        $form->addInput(
            [
                'name' => 'email',
                'id' => 'inputEmail',
                'label' => 'Email Address',
                'placeholder' => 'test@example.com',
                'error' => true,
            ]
        );
        $form->addInput(
            [
                'name' => 'email',
                'id' => 'inputEmail',
                'label' => 'Email Address',
                'placeholder' => 'test@example.com',
                'error' => true,
                'errorMessage' => 'Custom error message.',
                'errorLabel' => 'Custom label'
            ]
        );
        $form->addInput(
            [
                'name' => 'email',
                'id' => 'inputEmail',
                'label' => 'Email Address',
                'placeholder' => 'test@example.com',
                'error' => true,
                'errorMessage' => 'Custom error message. This is a longer message. Much longer then you\'d probably use normally.  Or not.  Cool, huh?',
                'errorLabel' => 'Custom label'
            ]
        );
        $form->addSelect(
            'Select Label',
            'selectLabel',
            [
                'An option',
                'Another option',
                'And yet another'
            ],
            '1'
        );
        $form->addSelect(
            'Select Label',
            'selectLabel',
            [
                'option' => 'An option',
                'anotherOption' => 'Another option',
                'yetAnother' => 'And yet another'
            ],
            'yetAnother'
        );
        $form->addSelect(
            'Select Label',
            'selectLabel',
            [
                'option' => 'An option',
                'option2' => 'An option 2',
                'anotherOption' => 'Another option',
                'anotherOption2' => 'Another option 2',
                'yetAnother' => 'And yet another',
                'yetAnother2' => 'And yet another 2',
            ],
            'anotherOption2',
            [ 'description' => 'Hey, this works! Yay!' ]
        );
        $form->addSelect(
            'Select Label',
            'selectLabel',
            [
                'option' => 'An option',
                'option2' => 'An option 2',
                'anotherOption' => 'Another option',
                'anotherOption2' => 'Another option 2',
                'yetAnother' => 'And yet another',
                'yetAnother2' => 'And yet another 2',
            ],
            'anotherOption2',
            [ 'description' => 'Hey, this works! Yay!', 'error' => true ]
        );
        $form->addTextArea('Message', 'message', 'This is existing values.');
        $form->addPassword([
            'label' => 'password'
        ]);
        $this->attach('form', $form->render());

        $this->output();
    }
}
