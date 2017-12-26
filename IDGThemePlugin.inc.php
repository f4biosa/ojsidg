<?php

/**
 * @file plugins/themes/ojsidg/IDGThemePlugin.inc.php
 *
 * Copyright (c) 2017-2017 Instituto Federal de Roraima
 * Copyright (c) 2007-2017 Fábio Rodrigues dos Santos
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class IDGThemePlugin
 * @ingroup plugins_themes_idg
 *
 * @brief IDG theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class IDGThemePlugin extends ThemePlugin {

    // Register option for ojsidg themes
    public function init(){

        $this->addOption('ojsidgTheme', 'radio', array(
            'label' => 'plugins.themes.ojsidg.options.ojsidgTheme.label',
            'description' => 'plugins.themes.ojsidg.options.ojsidgTheme.description',
            'options' => array(
                'verde' => 'plugins.themes.ojsidg.options.ojsidgTheme.verde',
                'amarelo'   => 'plugins.themes.ojsidg.options.ojsidgTheme.amarelo',
                'azul'  => 'plugins.themes.ojsidg.options.ojsidgTheme.azul',
                'branco'      => 'plugins.themes.ojsidg.options.ojsidgTheme.branco',
            )
        ));


        $this->addOption('organization', 'text', array(
            'label' => 'plugins.themes.ojsidg.options.organization.label',
            'description' => 'plugins.themes.ojsidg.options.organization.description',
        ));

        $this->addOption('organizationURL', 'text', array(
            'label' => 'plugins.themes.ojsidg.options.organizationURL.label',
            'description' => 'plugins.themes.ojsidg.options.organizationURL.description',
        ));

        $this->addOption('subordination', 'text', array(
            'label' => 'plugins.themes.ojsidg.options.subordination.label',
            'description' => 'plugins.themes.ojsidg.options.subordination.description',
        ));

        $this->addOption('subordinationURL', 'text', array(
            'label' => 'plugins.themes.ojsidg.options.subordinationURL.label',
            'description' => 'plugins.themes.ojsidg.options.subordinationURL.description',
        ));

        $this->addStyle('bootstrap', 'styles/bootstrap.less');

        $ojsidgTheme = $this->getOption('ojsidgTheme');
        if (!empty($ojsidgTheme)) {
            $this->addStyle('template-' . $ojsidgTheme, 'styles/less/' . 'template-'.$ojsidgTheme . '.less');
        }

        // Load jQuery from a CDN or, if CDNs are disabled, from a local copy.
        $min = Config::getVar('general', 'enable_minified') ? '.min' : '';
        $request = Application::getRequest();
        if (Config::getVar('general', 'enable_cdn')) {
            $jquery = '//ajax.googleapis.com/ajax/libs/jquery/' . CDN_JQUERY_VERSION . '/jquery' . $min . '.js';
            $jqueryUI = '//ajax.googleapis.com/ajax/libs/jqueryui/' . CDN_JQUERY_UI_VERSION . '/jquery-ui' . $min . '.js';
        } else {
            // Use OJS's built-in jQuery files
            $jquery = $request->getBaseUrl() . '/lib/pkp/lib/vendor/components/jquery/jquery' . $min . '.js';
            $jqueryUI = $request->getBaseUrl() . '/lib/pkp/lib/vendor/components/jqueryui/jquery-ui' . $min . '.js';
        }
        // Use an empty `baseUrl` argument to prevent the theme from looking for
        // the files within the theme directory
        $this->addScript('jQuery', $jquery, array('baseUrl' => ''));
        $this->addScript('jQueryUI', $jqueryUI, array('baseUrl' => ''));
        $this->addScript('jQueryTagIt', $request->getBaseUrl() . '/lib/pkp/js/lib/jquery/plugins/jquery.tag-it.js', array('baseUrl' => ''));

        // Load Bootstrap
        $this->addScript('bootstrap', 'bootstrap/js/bootstrap.min.js');

        HookRegistry::register('TemplateManager::display', array($this, 'loadTemplateData'));
    }

    /**
     * Get the display name of this plugin
     * @return string
     */
    function getDisplayName(){
        return __('plugins.themes.ojsidg.name');
    }

    /**
     * Get the description of this plugin
     * @return string
     */
    function getDescription(){
        return __('plugins.themes.ojsidg.description');
    }

    public function loadTemplateData($hookName, $args) {

        // Retrieve the TemplateManager
        $templateMgr = $args[0];

        $templateMgr->assign('organization', $this->getOption('organization'));
        $templateMgr->assign('organizationURL', $this->getOption('organizationURL'));

        $templateMgr->assign('subordination', $this->getOption('subordination'));
        $templateMgr->assign('subordinationURL', $this->getOption('subordinationURL'));
    }

}

?>
