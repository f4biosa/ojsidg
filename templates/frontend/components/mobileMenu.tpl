<div class="container-fluid">

    <div class="navbar-header">

        {* Mobile hamburger menu *}
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-menu"
                aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        {* Logo or site title. Only use <h1> heading on the homepage.
           Otherwise that should go to the page title. *}
        {if $requestedOp == 'index'}
        <h1 class="site-name">
            {else}
            <div class="site-name">
                {/if}
                {if $currentJournal && $multipleContexts}
                    {url|assign:"homeUrl" journal="index" router=$smarty.const.ROUTE_PAGE}
                {else}
                    {url|assign:"homeUrl" page="index" router=$smarty.const.ROUTE_PAGE}
                {/if}
                {if $displayPageHeaderLogo && is_array($displayPageHeaderLogo)}
                    <a href="{$homeUrl}" class="navbar-brand navbar-brand-logo">
                        <img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}"
                             {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"
                             {else}alt="{translate key="common.pageHeaderLogo.altText"}"{/if}>
                    </a>
                {elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
                    <a href="{$homeUrl}" class="navbar-brand">{$displayPageHeaderTitle}</a>
                {elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_array($displayPageHeaderTitle)}
                    <a href="{$homeUrl}" class="navbar-brand navbar-brand-logo">
                        <img src="{$publicFilesDir}/{$displayPageHeaderTitle.uploadName|escape:"url"}"
                             alt="{$displayPageHeaderTitle.altText|escape}">
                    </a>
                {else}
                    <a href="{$homeUrl}" class="navbar-brand">
                        <img src="{$baseUrl}/templates/images/structure/logo.png"
                             alt="{$applicationName|escape}" title="{$applicationName|escape}"/>
                    </a>
                {/if}
                {if $requestedOp == 'index'}
        </h1>
        {else}
    </div>
    {/if}

</div>