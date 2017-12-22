{**
 * templates/frontend/pages/indexSite.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Site index.
 *
 *}
{include file="frontend/components/header.tpl"}

<div id="main-site" class="page_index_site">

	{if $about}
		<div class="about_site">
			{$about|nl2br}
		</div>
	{/if}
<br />
	<div class="journals module">

		<div class="page-header outstanding-header">
			<h2 class="outstanding-title">
				{translate key="journal.journals"}
			</h2>
		</div>

		{if !count($journals)}
			<div class="no_journals">
				{translate key="site.noJournals"}
			</div>

		{else}

            {iterate from=journals item=journal}
            {capture assign="url"}{url journal=$journal->getPath()}{/capture}
            {assign var="thumb" value=$journal->getLocalizedSetting('journalThumbnail')}
            {assign var="description" value=$journal->getLocalizedDescription()}

			<div class="panel panel-default">
            {if $thumb}
                {assign var="altText" value=$journal->getLocalizedSetting('journalThumbnailAltText')}
				<div class="media-left">
					<a href="{$url|escape}">
						<img class="media-object" src="{$journalFilesPath}{$journal->getId()}/{$thumb.uploadName|escape:"url"}"{if $altText} alt="{$altText|escape}"{/if}>
					</a>
				</div>
            {/if}
				<div class="panel-heading">

					<h2 style="font-weight: bold" class="media-heading">
						<a href="{$url|escape}" rel="bookmark">
                            {$journal->getLocalizedName()}
						</a>
					</h2>
				</div>
				<div class="panel-body">

                    {if $description}
						<div class="description">
                            {$description|nl2br}
						</div>
                    {/if}

				</div>
				<div class="panel-footer">
					<ul class="btn-group btn-group" role="group">
						<li class="view btn btn-default">
							<a href="{$url|escape}">
                                {translate key="site.journalView"}
							</a>
						</li>
						<li class="current btn btn-default">
							<a href="{url|escape journal=$journal->getPath() page="issue" op="current"}">
                                {translate key="site.journalCurrent"}
							</a>
						</li>
					</ul>
				</div>
			</div>
            {/iterate}




			{if $journals->getPageCount() > 0}
				<div class="cmp_pagination">
					{page_info iterator=$journals}
					{page_links anchor="journals" name="journals" iterator=$journals}
				</div>
			{/if}
		{/if}
	</div>

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
