{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	{* Sidebars *}
	{if empty($isFullWidth)}
		{call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"}
		{if $sidebarCode}
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-2 col-md-4" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</aside><!-- pkp_sidebar.left -->
		{/if}
	{/if}
  </div><!-- pkp_structure_content -->

  <footer class="footer" role="contentinfo">

  	<div class="container">

      <div class="row">
    		{if $pageFooter}
        <div class="col-md-8">
          {$pageFooter}
        </div>
    		{/if}

    		<div class="col-md-4" role="complementary" aria-label="{translate|escape key="about.aboutThisPublishingSystem"}">
    			<a href="{url page="about" op="aboutThisPublishingSystem"}">
    				<img alt="{translate key=$packageKey}" src="{$baseUrl}/{$brandImage}">
    			</a>
    			<a href="{$pkpLink}">
    				<img alt="{translate key="common.publicKnowledgeProject"}" src="{$baseUrl}/lib/pkp/templates/images/pkp_brand.png">
    			</a>
    		</div>

      </div> <!-- .row -->
  	</div><!-- .container -->
  </footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}

<div id="layout">
	<footer>
		<div class="footer-atalhos">
			<div class="container">
				<div class="pull-right voltar-ao-topo"><a href="#portal-siteactions"><i class="icon-chevron-up"></i>&nbsp;Voltar para o topo</a></div>
			</div>
		</div>
		<div class="container container-menus">
			<div id="footer" class="row footer-menus">
				<span class="hide">Início da navegação de rodapé</span>
				<div class="col-md-3">
					<nav class="row assuntos nav">
						<h2>Assuntos</h2>
						<ul>
							<li><a href="#" title="Editoria A">Editoria A</a></li>
							<li><a href="#" title="Editoria B">Editoria B</a></li>
							<li><a href="#" title="Editoria C">Editoria C</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-3">
					<nav class="row servicos nav">
						<h2>Serviços</h2>
						<ul>
							<li class="portalservicos-item">
								<a title="Perguntas frequentes" href="#">Perguntas frequentes</a>
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
					</nav>
				</div>
				<div class="col-md-3">
					<nav class="row redes-sociais nav">
						<h2>Redes Sociais</h2>
						<ul>
							<li class="portalredes-item"><a title="Twitter" href="https://twitter.com/twitter">
									Twitter</a>
							</li>
							<li class="portalredes-item"><a title="YouTube" href="http://youtube.com/youtube">
									Youtube</a>
							</li>
							<li class="portalredes-item"><a title="Facebook" href="http://facebook.com/facebook">
									Facebook</a>
							</li>
							<li class="portalredes-item"><a title="Flickr" href="http://flickr.com/flickr">
									Flickr</a>
							</li>
						</ul>
					</nav>
				</div>
				<div class="col-md-3">
					<nav class="row rss nav">
						<h2>RSS</h2>
						<ul>
							<li><a href="#" title="O que é?">O que é?</a></li>
							<li><a href="#" title="Assine">Assine</a></li>
						</ul>
					</nav>
					<nav class="row sobre nav">
						<h2>Sobre o site</h2>
						<ul>
							<li><a href="#">Acessibilidade</a></li>
							<li><a href="#">Mapa do site</a></li>
							<li><a href="#">Versión en Español - Versão em Espanhol</a></li>
							<li><a href="#">English version - Versão em Inglês</a></li>
						</ul>
					</nav>
				</div>
				<span class="hide">Fim da navegação de rodapé</span>
			</div>
			<!-- fim .row -->
		</div>
		<!-- fim .container -->
		<div class="footer-logos">
			<div class="container">
				<a href="http://www.acessoainformacao.gov.br/" class="logo-acesso pull-left"><img src="images/acesso-a-informacao.png" alt="Acesso a Informação"></a>
				<!-- separador para fins de acessibilidade --><span class="hide">&nbsp;</span><!-- fim separador para fins de acessibilidade -->
				<a href="http://www.brasil.gov.br/" class="brasil pull-right"><img src="images/brasil.png" alt="Brasil - Governo Federal"></a>
			</div>
		</div>
		<div class="footer-ferramenta">
			<div class="container">
				<p>Interface preparada para desenvolvimento com o CMS <a href="http://www.joomla.org">Joomla</a></p>
			</div>
		</div>
		<div class="footer-atalhos visible-phone">
			<div class="container">
				<span class="hide">Fim do conteúdo da página</span>
				<div class="pull-right voltar-ao-topo"><a href="#portal-siteactions"><i class="icon-chevron-up"></i>&nbsp;Voltar para o topo</a></div>
			</div>
		</div>
	</footer>
</div>



</body>
</html>
