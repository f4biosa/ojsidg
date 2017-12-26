{**
* templates/frontend/components/primaryNavMenu.tpl
*
* Copyright (c) 2014-2017 Simon Fraser University Library
* Copyright (c) 2003-2017 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Primary navigation menu list for OJS
*}
<ul id="main-navigation" class="navbar-nav">

    {if $enableAnnouncements}
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="announcement"}">
            {translate key="announcement.announcements"}
        </a>
      </li>
    {/if}

    {if $currentJournal}

    {if $currentJournal->getSetting('publishingMode') != $smarty.const.PUBLISHING_MODE_NONE}
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="current"}">
            {translate key="navigation.current"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}">
            {translate key="navigation.archives"}
        </a>
      </li>
    {/if}
  <li class="dropdown">
    <a href="{url router=$smarty.const.ROUTE_PAGE page="about"}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{translate key="navigation.about"} <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about"}">
            {translate key="about.aboutContext"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">
            {translate key="about.editorialTeam"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">
            {translate key="about.submissions"}
        </a>
      </li>
        {if $currentJournal->getSetting('mailingAddress') || $currentJournal->getSetting('contactName')}
          <li>
            <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">
                {translate key="about.contact"}
            </a>
          </li>
        {/if}
    </ul>

      {/if}
</ul>


<!--<ul>
							<li class="portalservicos-item">
								<a title="Perguntas frequentes" href="interna-perguntas-frequentes.html">Perguntas frequentes</a>
							</li>
							<li class="portalservicos-item">
								<a title="Contato" href="#">Contato</a>
							</li>
							<li class="portalservicos-item">
								<a title="Serviços da [Denominação]" href="#">Serviços da [Denominação]</a>
							</li>
							<li class="portalservicos-item">
								<a title="Dados abertos" href="#">Dados abertos</a>
							</li>
							<li class="portalservicos-item">
								<a title="Área de imprensa" href="#">Área de imprensa</a>
							</li>
						</ul>
						<span class="hidden">Fim do menu de serviços</span> -->
{* Primary site navigation *}