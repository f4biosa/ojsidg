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
    <div class="container container-menus">
        <div id="footer" class="row footer-menus">
            <span class="hide">Início da navegação de rodapé</span>
            <div class="span3">
                <nav class="row assuntos nav">
                    <h2>Assuntos</h2>
                    <ul>
                        <li><a href="#" title="Editoria A">Editoria A</a></li>
                        <li><a href="#" title="Editoria B">Editoria B</a></li>
                        <li><a href="#" title="Editoria C">Editoria C</a></li>
                    </ul>
                </nav>
            </div>
            <div class="span3">
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
            <div class="span3">
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
            <div class="span3">
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
