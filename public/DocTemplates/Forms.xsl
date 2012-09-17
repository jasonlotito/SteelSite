<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="4.0" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
  <xsl:include href="../Page.xsl"/>

  <xsl:template match="/Forms" name="Content">
    <div class="row">
      <div class="span3">
        <div>

          <div data-spy="affix">
            <h4>Forms</h4>
            <ol class="nav nav-list">
              <li>
                <a href="#top">top</a>
              </li>
              <li class="divider"></li>
              <li>Elements
                <ol class="nav nav-list">
                  <li>
                    <a href="#Form">Form</a>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <a href="#Button">Button</a>
                  </li>
                  <li>
                    <a href="#Input">Input</a>
                  </li>
                  <li>
                    <a href="#Select">Select</a>
                  </li>
                  <li>
                    <a href="#TextArea">TextArea</a>
                  </li>
                </ol>
              </li>
              <li class="divider"></li>
              <li>
                Samples
                <ol class="nav nav-list">
                  <li>
                    <a href="#Sample_Form">Sample Form</a>
                  </li>
                </ol>
              </li>
            </ol>
          </div>

        </div>
      </div>
      <div class="span9">
        <h1>Forms</h1>

        <h2>Elements</h2>

        <section>
          <h3>
            <a>Form</a>
          </h3>

          <h4>Interface</h4>

          <h4>PHP</h4>
          <h4>XSLT</h4>
          <h4>Output</h4>
        </section>

        <section>
          <h3>
            <a>Button</a>
          </h3>

          <h4>Interface</h4>
          <h4>PHP</h4>
          <h4>XSLT</h4>
          <h4>Output</h4>
        </section>

        <section>
          <h3>
            <a href="#Input" name="Input">Input</a>
          </h3>

          <h4>Interface</h4>

          <ul>
            <li><a href="#Input_addTextArea">addTextArea(string $label, string $name = null, string $value = '')</a></li>
            <li><a href="#Input_addTextArea(array)">addTextArea(array $options)</a></li>
            <li><a href="#Input_addInput">addInput(string $name, string $name = null, string $value = '')</a></li>
            <li><a href="#Input_render">render()</a></li>
            <li><a href="#Input_output">output()</a></li>
          </ul>

          <hr/>

          <dl>
            <dt>
              <a href="#Input_addTextArea" name="Input_addTextArea"> ¶ 
                <tt>
                  <span>Input::</span>
                  <span class="method">addTextArea(string $label, string $name = null, string $value = '')</span>
                </tt>
              </a>
            </dt>
            <dd>Add a textarea element to the form.</dd>
            <dd>
              <dl class="attributes">
                <dt>$label</dt>
                <dd class="type">string</dd>
                <dd>Label attached to the input element.</dd>
                <dt>$name</dt>
                <dd class="type optional">string</dd>
                <dd>Name attribute of the element.</dd>
                <dt>$value</dt>
                <dd class="type optional">string</dd>
                <dd>Value attribute of the element.</dd>
              </dl>
            </dd>
            <dt>
              <a href="#Input_addTextArea(array)" name="Input_addTextArea(array)"> ¶ 
                <tt>
                  <span>Input::</span>
                  <span class="method">addTextArea(array $options)</span>
                </tt>
              </a>
            </dt>
            <dd>
              <dl class="attributes">
                <dt>$options</dt>
                <dd>
                  <p>Array of options. Available keys:</p>
                  <dl class="attributes">
                    <dt>label</dt>
                    <dd class="type">string</dd>
                    <dd>Label attached to the input element.</dd>
                    <dt>name</dt>
                    <dd class="type">string</dd>
                    <dd>Name attribute of the element.</dd>
                    <dt>value</dt>
                    <dd class="type">string</dd>
                    <dd>Value attribute of the element.</dd>
                  </dl>
                </dd>
              </dl>
            </dd>

            <dt>
              <a href="#Input_addInput" name="Input_addInput"> ¶ 
                <tt>
                  <span>Input::</span>
                  <span class="method">addInput(string $label, string $name = null, string $value = '')</span>
                </tt>
              </a>
            </dt>
            <dd>Add a textarea element to the form.</dd>
            <dd>
              <dl class="attributes">
                <dt>$label</dt>
                <dd class="type">string</dd>
                <dd>Label attached to the input element.</dd>
                <dt>$name</dt>
                <dd class="type optional">string</dd>
                <dd>Name attribute of the element.</dd>
                <dt>$value</dt>
                <dd class="type optional">string</dd>
                <dd>Value attribute of the element.</dd>
              </dl>
            </dd>
            <dt>
              <a href="#Input_render" name="Input_render"> ¶ 
                <tt>
                  <span>Input::</span>
                  <span class="method">render()</span>
                </tt>
              </a>
            </dt>
            <dd>Add a textarea element to the form.</dd>

            <dt>
              <a href="#Input_output" name="Input_output"> ¶
                <tt>
                  <span>Input::</span>
                  <span class="method">output()</span>
                </tt>
              </a>
            </dt>
            <dd>Add a textarea element to the form.</dd>

          </dl>

          <h4>PHP Usage</h4>
          <h4>XSLT Implementation</h4>
          <h4>Output</h4>
        </section>

        <section>
          <h3>
            <a>Select</a>
          </h3>

          <h4>Interface</h4>
          <h4>PHP</h4>
          <h4>XSLT</h4>
          <h4>Output</h4>
        </section>

        <section>
          <h3>
            <a>TextArea</a>
          </h3>

          <h4>Interface</h4>
          <h4>PHP</h4>
          <h4>XSLT</h4>
          <h4>Output</h4>
        </section>

        <hr/>

        <h2>Samples</h2>

        <section>
          <h3>
            <a href="#Sample_Form" name="Sample_Form">Sample Form</a>
          </h3>

          <p>Here is a sample form.</p>

          <h4>PHP</h4>

          <p>Added using PHP with the following code:</p>

          <pre>
      <xsl:text>
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
$this->attach('form', $form->render());</xsl:text>
          </pre>

          <h4>XSLT</h4>

          <p>Added to the template with the following code:</p>

          <pre>
    <xsl:text>
&lt;xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  &lt;xsl:output method="html" version="4.0" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
  &lt;xsl:include href="Page.xsl"/>

  &lt;xsl:template match="/Signup" name="Content">
    &lt;h1>Signup&lt;/h1>
    </xsl:text>
            <b class="text-info">&lt;xsl:value-of select="/Signup/form" disable-output-escaping="yes"/></b>
    <xsl:text>
  &lt;/xsl:template>

&lt;/xsl:stylesheet></xsl:text>
          </pre>

          <h4>Output</h4>

          <div class="well">
            <xsl:value-of select="/Forms/form" disable-output-escaping="yes"/>
          </div>
        </section>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
