{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Frontend site footer.
 *
 *}
{assign var=brandImage value="plugins/themes/ojsidg/templates/images/brasil.png"}
{assign var=packageKey value="common.openJournalSystems"}
{assign var=pkpLink value="http://pkp.sfu.ca/ojs"}
{include file="frontend/components/footer.tpl"}
<div id="wrapper">
<footer>
    <div class="footer-atalhos">
        <div class="container">
            <div class="pull-right voltar-ao-topo"><a href="#portal-siteactions"><i class="icon-chevron-up"></i>&nbsp;Voltar para o topo</a></div>
        </div>
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
