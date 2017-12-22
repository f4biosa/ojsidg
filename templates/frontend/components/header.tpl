{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

{* Determine whether a logo or title string is being displayed *}
{assign var="showingLogo" value=true}
{if $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
    {assign var="showingLogo" value=false}
{/if}

<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{translate|assign:"pageTitleTranslated" key=$pageTitle}{/if}
{include file="core:frontend/components/headerHead.tpl"}

<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}">
<div class="pkp_structure_page">

    <nav id="accessibility-nav" class="sr-only" role="navigation" aria-labelled-by="accessible-menu-label">
        <h2 id="accessible-menu-label">
            {translate|escape key="plugins.themes.bootstrap3.accessible_menu.label"}
        </h2>
        <ul>
            <li>
                <a href="#main-navigation">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_navigation"}</a>
            </li>
            <li>
                <a href="#main-content">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_content"}</a>
            </li>
            <li><a href="#sidebar">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.sidebar"}</a></li>
        </ul>
    </nav

<div class="layout">
    <header>
        <div class="container">
            <div class="row-fluid accessibility-language-actions-container">
                <div class="col-md-6 accessibility-container">
                    <ul id="accessibility">
                        <li>
                            <a accesskey="1" href="#content" id="link-conteudo">
                                Ir para o conte&uacute;do
                                <span>1</span>
                            </a>
                        </li>
                        <li>
                            <a accesskey="2" href="#main-navigation" id="link-navegacao">
                                Ir para o menu
                                <span>2</span>
                            </a>
                        </li>
                        <li>
                            <a accesskey="3" href="#portal-searchbox" id="link-buscar">
                                Ir para a busca
                                <span>3</span>
                            </a>
                        </li>
                        <li>
                            <a accesskey="4" href="#footer" id="link-rodape">
                                Ir para o rodap&eacute;
                                <span>4</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- fim div.col-md-6 -->
                <div class="col-md-6 language-and-actions-container">
                    <!-- Descomente para inserir menu de exemplo de idiomas no topo -->
                    <!-- <ul id="language" class="pull-right">
                        <li class="language-en">
                            <a href="#">EN</a>
                        </li>
                        <li class="language-es">
                            <a href="#">ES</a>
                        </li>
                    </ul>
                    <ul id="portal-siteactions" class="pull-right">
                        <li>
                            <a accesskey="5" href="interna-acessibilidade.html">Acessibilidade</a>
                        </li>
                        <li>
                            <a accesskey="6" href="#" class="toggle-contraste">Alto Contraste</a>
                        </li>
                        <li>
                            <a accesskey="7" href="#">Mapa do Site</a>
                        </li>
                    </ul> -->
                </div>
                <!-- fim div.col-md-6 -->
            </div>
            <!-- fim .row-fluid -->
            <div class="row-fluid">
                <div id="logo" class="col-md-8">
                    <!-- <div id="logo" class="col-md-8 big"> <div id="logo" class="col-md-8 small"> -->


                    {* Logo or site title. Only use <h1> heading on the homepage.
           Otherwise that should go to the page title. *}
                    {if $requestedOp == 'index'}
                    <div class="site-name">
                        {else}
                        <div class="site-name">
                            {/if}
                            {if $currentJournal && $multipleContexts}
                                {url|assign:"homeUrl" journal="index" router=$smarty.const.ROUTE_PAGE}
                            {else}
                                {url|assign:"homeUrl" page="index" router=$smarty.const.ROUTE_PAGE}
                            {/if}
                            {if $displayPageHeaderLogo && is_array($displayPageHeaderLogo)}
                                <a href="{$homeUrl}">
                                    <img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}"
                                         {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"
                                         {else}alt="{translate key="common.pageHeaderLogo.altText"}"{/if}>
                                </a>
                            {elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
                                <a href="http://www.ifrr.edu.br" >
										    <span class="portal-title-1">
                                             {if $organization}
                                                 {$organization}
                                             {/if}
                                            </span>
                                </a>
                                <a href="{$homeUrl}">
                                    <h1 class="portal-title corto">
                                        {$displayPageHeaderTitle}
                                    </h1>
                                </a>
                                <a href="http://localhost/~fabio/ojs/" >
                                            <span class="portal-description">
                                            {if $subordination}
                                                {$subordination}
                                            {/if}
                                            </span>
                                </a>
                            {elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_array($displayPageHeaderTitle)}
                                <a href="{$homeUrl}" >
                                    <img src="{$publicFilesDir}/{$displayPageHeaderTitle.uploadName|escape:"url"}"
                                         alt="{$displayPageHeaderTitle.altText|escape}">
                                </a>
                            {else}
                                <a href="{$homeUrl}" >
                                    <img src="{$baseUrl}/templates/images/structure/logo.png"
                                         alt="{$applicationName|escape}" title="{$applicationName|escape}"/>
                                </a>
                            {/if}
                            {if $requestedOp == 'index'}

                            {else}
                        </div>
                        {/if}
                    </div>

                    </a>
                </div>
                <!-- fim .col-md-8 -->
                <div class="col-md-4">
                    <div id="portal-searchbox" class="row">
                        {if !$noContextsConfigured}
                            <div class="pull-md-right">
                                {include file="frontend/components/searchForm_simple.tpl"}
                            </div>
                        {/if}
                    </div>
                    <!-- fim div#portal-searchbox.row -->
                    <div id="social-icons" class="row">
                        <h2 class="hidden">Redes Sociais</h2>
                        <ul class="pull-right">
                            <li class="portalredes-item"><a title="Twitter" href="https://twitter.com/twitter">
                                    <i class="icon-twitter-sign"><span>Twitter</span></i></a>
                            </li>
                            <li class="portalredes-item"><a title="YouTube" href="http://youtube.com/youtube">
                                    <i class="icon-youtube"><span>Youtube</span></i></a>
                            </li>
                            <li class="portalredes-item"><a title="Facebook" href="http://facebook.com/facebook">
                                    <i class="icon-facebook-sign"><span>Facebook</span></i></a>
                            </li>
                            <li class="portalredes-item"><a title="Flickr" href="http://flickr.com/flickr">
                                    <i class="icon-flickr"><span>Flickr</span></i></a>
                            </li>
                        </ul>
                    </div>
                    <!-- fim div#social-icons.row -->
                </div>
                <!-- fim .col-md-4 -->
            </div>
            <!-- fim .row-fluid -->
        </div>
        <!-- fim div.container -->
        <div class="sobre">
            <div class="container">
                <nav class="menu-servicos">
                    <h2 class="hidden">Serviços</h2>
                    <nav id="nav-menu" class="navbar-collapse collapse"
                         aria-label="{translate|escape key="common.navigation.site"}">
                        {* Primary navigation menu for current application *}
                        {include file="frontend/components/primaryNavMenu.tpl"}
                        {include file="frontend/components/userProfileNav.tpl"}
                    </nav>
                </nav>
                <!-- fim #menu-servicos.pull-right -->
            </div>
            <!-- .container -->
        </div>
        <!-- fim .sobre -->
    </header>
    <br/>
</div>

{* Wrapper for page content and sidebars *}
<div class="pkp_structure_content">
    <main class="pkp_structure_main" role="main" id="content">
        <div class="container">


