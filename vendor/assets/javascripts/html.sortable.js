


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>html5sortable/html.sortable.js at master · voidberg/html5sortable</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="voidberg/html5sortable" name="twitter:title" /><meta content="html5sortable - Lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API." name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/115390?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/115390?v=3&amp;s=400" property="og:image" /><meta content="voidberg/html5sortable" property="og:title" /><meta content="https://github.com/voidberg/html5sortable" property="og:url" /><meta content="html5sortable - Lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API." property="og:description" />
      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="D057E9B4:0969:264F367:55036277" name="octolytics-dimension-request_id" /><meta content="7883445" name="octolytics-actor-id" /><meta content="taelton" name="octolytics-actor-login" /><meta content="a4405d21bc7bb8ad3d5de24813fabdbf453668643b64730fc9f3bcae885f38dc" name="octolytics-actor-hash" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="8menJ5vy9PQf52cap9DhFDc8O4zEPFDx2CItpQq6zoysXriy0YpC+CmK4dngwmZ3t0vc6MOdkyKICal/fV6NRA==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-85e4ac99403eefa73664d9b122f27095fee8b7333e67f34fa34480ae497f7555.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2-901780fdaaa6b0f56b2004899a7a24194bf4217cc7864291a9f68fa3a9264fdf.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="8060cc7a9543870628764b4fdb4264ea">

      
  <meta name="description" content="html5sortable - Lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API.">
  <meta name="go-import" content="github.com/voidberg/html5sortable git https://github.com/voidberg/html5sortable.git">

  <meta content="115390" name="octolytics-dimension-user_id" /><meta content="voidberg" name="octolytics-dimension-user_login" /><meta content="12780802" name="octolytics-dimension-repository_id" /><meta content="voidberg/html5sortable" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="12780802" name="octolytics-dimension-repository_network_root_id" /><meta content="voidberg/html5sortable" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/voidberg/html5sortable/commits/master.atom" rel="alternate" title="Recent Commits to html5sortable:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/voidberg/html5sortable/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/voidberg/html5sortable/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
      </div>
      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item explore">
          <a class="header-nav-link" href="/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
          </li>
        <li class="header-nav-item">
          <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
        </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/taelton" data-ga-click="Header, go to profile, text:username">
      <img alt="taelton" class="avatar" data-user="7883445" height="20" src="https://avatars0.githubusercontent.com/u/7883445?v=3&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">taelton</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="#" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      
<ul class="dropdown-menu">
  <li>
    <a href="/new" data-ga-click="Header, create new repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new" data-ga-click="Header, create new organization, icon:organization"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="dropdown-divider"></li>
    <li class="dropdown-header">
      <span title="voidberg/html5sortable">This repository</span>
    </li>
      <li>
        <a href="/voidberg/html5sortable/issues/new" data-ga-click="Header, create new issue, icon:issue"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

    </div>
  </li>

  <li class="header-nav-item">
        <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status all-read"></span>
        <span class="octicon octicon-inbox"></span>
</a>
  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="gLPYj5bcphITxWzRn9K9ECndTLb40nHx0JafrdSCFQC7S0b0sT4cpupu79s/FrzAsOlqVzkxpawcEAKeBvkGTA==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>


    
  </div>
</div>

        

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

  <li>
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="MObexHB2WHZ55IiHad4gqr92X7jAsIxVsK8seNiBnsRKaERa+YW487BMWqbulOIxms9Vz5Ym0WUSaVCiLa611A==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="12780802" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/voidberg/html5sortable/subscription"
          class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>
        <a class="social-count js-social-count" href="/voidberg/html5sortable/watchers">
          23
        </a>
        
        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/voidberg/html5sortable/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="UcC9aEF4bFaRU9mBUeAxZZFvWCh0C1c3LJDvZ7fXMVlR1qXXls1mmRVh7x6cRZ938rup35rkA2XEmGYbfNyUNg==" /></div>
      <button
        class="minibutton with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar voidberg/html5sortable"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/voidberg/html5sortable/stargazers">
          303
        </a>
</form>
    <form accept-charset="UTF-8" action="/voidberg/html5sortable/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="JBijyh5bo3mobsqQ7GXKn9szAQ4IWBKCUt9G/gVfXuuP5Q8vV3K+L3KPkj/svn+zqutoqTLLBxAb2XSzNTY62g==" /></div>
      <button
        class="minibutton with-count js-toggler-target"
        aria-label="Star this repository" title="Star voidberg/html5sortable"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/voidberg/html5sortable/stargazers">
          303
        </a>
</form>  </div>

  </li>

        <li>
          <form accept-charset="UTF-8" action="/voidberg/html5sortable/fork" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="N1Aos4Qu0UbEQnLVbX0Pi2myZD2D6wp7+9/rsyxVL2l8aqi9bMYzBgyqOSfc2dP7oLK4SQ22HtDOumojAfKjow==" /></div>
            <button
                type="submit"
                class="minibutton with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of voidberg/html5sortable to your account"
                aria-label="Fork your own copy of voidberg/html5sortable to your account">
              <span class="octicon octicon-repo-forked"></span>
              Fork
            </button>
            <a href="/voidberg/html5sortable/network" class="social-count">62</a>
</form>        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/voidberg" class="url fn" itemprop="url" rel="author"><span itemprop="title">voidberg</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/voidberg/html5sortable" class="js-current-repository" data-pjax="#js-repo-pjax-container">html5sortable</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/voidberg/html5sortable/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/voidberg/html5sortable" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /voidberg/html5sortable">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/voidberg/html5sortable/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /voidberg/html5sortable/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
      <a href="/voidberg/html5sortable/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /voidberg/html5sortable/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>


      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/voidberg/html5sortable/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /voidberg/html5sortable/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/voidberg/html5sortable/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /voidberg/html5sortable/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/voidberg/html5sortable/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /voidberg/html5sortable/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/voidberg/html5sortable.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:voidberg/html5sortable.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/voidberg/html5sortable" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>, <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>, or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="https://windows.github.com" class="minibutton sidebar-button" title="Save voidberg/html5sortable to your computer and use it in GitHub Desktop." aria-label="Save voidberg/html5sortable to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/voidberg/html5sortable/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download the contents of voidberg/html5sortable as a zip file"
                   title="Download the contents of voidberg/html5sortable as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/voidberg/html5sortable/blob/a5dc54bacc02efa3c6017ebbabdc3518f35b5583/src/html.sortable.js" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:d6f82a58f7a7762710732255eb7db5fd -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/voidberg/html5sortable/blob/gh-pages/src/html.sortable.js"
               data-name="gh-pages"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gh-pages">
                gh-pages
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/voidberg/html5sortable/blob/master/src/html.sortable.js"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.8/src/html.sortable.js"
                 data-name="v0.1.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.8">v0.1.8</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.7/src/html.sortable.js"
                 data-name="v0.1.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.7">v0.1.7</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.6/src/html.sortable.js"
                 data-name="v0.1.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.6">v0.1.6</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.5/src/html.sortable.js"
                 data-name="v0.1.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.5">v0.1.5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.4/src/html.sortable.js"
                 data-name="v0.1.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.4">v0.1.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.3/src/html.sortable.js"
                 data-name="v0.1.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.3">v0.1.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/v0.1.2/src/html.sortable.js"
                 data-name="v0.1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v0.1.2">v0.1.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/0.1.1/src/html.sortable.js"
                 data-name="0.1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="0.1.1">0.1.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/voidberg/html5sortable/tree/0.1.0/src/html.sortable.js"
                 data-name="0.1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="0.1.0">0.1.0</a>
            </div>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="button-group right">
    <a href="/voidberg/html5sortable/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/voidberg/html5sortable" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">html5sortable</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/voidberg/html5sortable/tree/master/src" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">src</span></a></span><span class="separator">/</span><strong class="final-path">html.sortable.js</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="André Neves" class="avatar" data-user="3869532" height="24" src="https://avatars2.githubusercontent.com/u/3869532?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/andrefgneves" rel="contributor">andrefgneves</a></span>
        <time datetime="2014-11-26T12:29:44Z" is="relative-time">Nov 26, 2014</time>
        <div class="commit-title">
            <a href="/voidberg/html5sortable/commit/33c062b75b831e9863b6cd03a2038796be2e1bb4" class="message" data-pjax="true" title="Add sortstart event">Add sortstart event</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>9</strong>
           contributors
        </a>
      </p>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="voidberg" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=voidberg"><img alt="Alexandru Badiu" class="avatar" data-user="115390" height="20" src="https://avatars0.githubusercontent.com/u/115390?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="drskullster" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=drskullster"><img alt="drskullster" class="avatar" data-user="1693766" height="20" src="https://avatars1.githubusercontent.com/u/1693766?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="makepanic" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=makepanic"><img alt="Christian" class="avatar" data-user="1205444" height="20" src="https://avatars3.githubusercontent.com/u/1205444?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="coreyfarrell" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=coreyfarrell"><img alt="Corey Farrell" class="avatar" data-user="903597" height="20" src="https://avatars1.githubusercontent.com/u/903597?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="TV-productions" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=TV-productions"><img alt="TV productions" class="avatar" data-user="1744962" height="20" src="https://avatars2.githubusercontent.com/u/1744962?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="batista" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=batista"><img alt="Sérgio Batista" class="avatar" data-user="976915" height="20" src="https://avatars3.githubusercontent.com/u/976915?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="omghax" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=omghax"><img alt="Dray Lacy" class="avatar" data-user="1123" height="20" src="https://avatars3.githubusercontent.com/u/1123?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="splagemann" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=splagemann"><img alt="Sebastian" class="avatar" data-user="4512512" height="20" src="https://avatars3.githubusercontent.com/u/4512512?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="andrefgneves" href="/voidberg/html5sortable/commits/master/src/html.sortable.js?author=andrefgneves"><img alt="André Neves" class="avatar" data-user="3869532" height="20" src="https://avatars0.githubusercontent.com/u/3869532?v=3&amp;s=40" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Alexandru Badiu" data-user="115390" height="24" src="https://avatars2.githubusercontent.com/u/115390?v=3&amp;s=48" width="24" />
            <a href="/voidberg">voidberg</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="drskullster" data-user="1693766" height="24" src="https://avatars3.githubusercontent.com/u/1693766?v=3&amp;s=48" width="24" />
            <a href="/drskullster">drskullster</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Christian" data-user="1205444" height="24" src="https://avatars1.githubusercontent.com/u/1205444?v=3&amp;s=48" width="24" />
            <a href="/makepanic">makepanic</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Corey Farrell" data-user="903597" height="24" src="https://avatars3.githubusercontent.com/u/903597?v=3&amp;s=48" width="24" />
            <a href="/coreyfarrell">coreyfarrell</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="TV productions" data-user="1744962" height="24" src="https://avatars0.githubusercontent.com/u/1744962?v=3&amp;s=48" width="24" />
            <a href="/TV-productions">TV-productions</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Sérgio Batista" data-user="976915" height="24" src="https://avatars1.githubusercontent.com/u/976915?v=3&amp;s=48" width="24" />
            <a href="/batista">batista</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Dray Lacy" data-user="1123" height="24" src="https://avatars1.githubusercontent.com/u/1123?v=3&amp;s=48" width="24" />
            <a href="/omghax">omghax</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Sebastian" data-user="4512512" height="24" src="https://avatars1.githubusercontent.com/u/4512512?v=3&amp;s=48" width="24" />
            <a href="/splagemann">splagemann</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="André Neves" data-user="3869532" height="24" src="https://avatars2.githubusercontent.com/u/3869532?v=3&amp;s=48" width="24" />
            <a href="/andrefgneves">andrefgneves</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">
      <div class="button-group">
        <a href="/voidberg/html5sortable/raw/master/src/html.sortable.js" class="minibutton " id="raw-url">Raw</a>
          <a href="/voidberg/html5sortable/blame/master/src/html.sortable.js" class="minibutton js-update-url-with-hash">Blame</a>
        <a href="/voidberg/html5sortable/commits/master/src/html.sortable.js" class="minibutton " rel="nofollow">History</a>
      </div><!-- /.button-group -->

        <a class="octicon-button tooltipped tooltipped-nw"
           href="https://windows.github.com" aria-label="Open this file in GitHub for Windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

            <form accept-charset="UTF-8" action="/voidberg/html5sortable/edit/master/src/html.sortable.js" aria-label="Clicking this button will fork this project so you can edit the file" class="tooltipped tooltipped-s inline-form edit-file-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="xpMZXjK6fCO24fVmMpFkU+8zVD8NpY8N5gW5DfaN7B0RGXpe/8Xn8BkKPFTcZ5ujJppJNpRaPiX0fr+nk9xVLw==" /></div>
              <button class="web-edit-button"
                      type="submit"
                      data-hotkey="e"
                      data-disable-with>
                <span class="octicon octicon-pencil"></span>
              </button>
</form>
          <form accept-charset="UTF-8" action="/voidberg/html5sortable/delete/master/src/html.sortable.js" aria-label="Fork this project and delete file" class="tooltipped tooltipped-s inline-form delete-file-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="glwK3BomQhnZIsLWVTpTqWx5yQHBMay3Y6nsW6sQpghT262J20r49UI9IUfFYl7bjTJ/+ZFikP7k74V/87rSNA==" /></div>
            <button class="web-edit-button"
                    type="submit"
                    data-disable-with>
              <span class="octicon octicon-trashcan "></span>
            </button>
</form>      </a>
    </div><!-- /.actions -->
    <div class="file-info">
        141 lines (124 sloc)
        <span class="file-info-divider"></span>
      5.416 kb
    </div>
  </div>
  
  <div class="blob-wrapper data type-javascript">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code js-file-line"><span class="pl-c">/*</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code js-file-line"><span class="pl-c"> * HTML5 Sortable jQuery Plugin</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code js-file-line"><span class="pl-c"> * https://github.com/voidberg/html5sortable</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code js-file-line"><span class="pl-c"> *</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code js-file-line"><span class="pl-c"> * Original code copyright 2012 Ali Farhadi.</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code js-file-line"><span class="pl-c"> * This version is mantained by Alexandru Badiu &lt;andu@ctrlz.ro&gt;</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code js-file-line"><span class="pl-c"> *</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code js-file-line"><span class="pl-c"> * Thanks to the following contributors: andyburke, bistoco, daemianmack, drskullster, flying-sheep, OscarGodson, Parikshit N. Samant, rodolfospalenza, ssafejava</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code js-file-line"><span class="pl-c"> *</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code js-file-line"><span class="pl-c"> * Released under the MIT license.</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code js-file-line"><span class="pl-c"> */</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code js-file-line"><span class="pl-s1"><span class="pl-pds">&#39;</span>use strict<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code js-file-line">(<span class="pl-st">function</span> (<span class="pl-vpf">$</span>) {</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code js-file-line">  <span class="pl-s">var</span> dragging, draggingHeight, placeholders <span class="pl-k">=</span> $();</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code js-file-line">  <span class="pl-s3">$.fn</span>.<span class="pl-en">sortable</span> <span class="pl-k">=</span> <span class="pl-st">function</span> (<span class="pl-vpf">options</span>) {</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code js-file-line">    <span class="pl-s">var</span> method <span class="pl-k">=</span> <span class="pl-s3">String</span>(options);</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code js-file-line">    options <span class="pl-k">=</span> $.extend({</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code js-file-line">      connectWith<span class="pl-k">:</span> <span class="pl-c1">false</span>,</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code js-file-line">      placeholder<span class="pl-k">:</span> <span class="pl-c1">null</span>,</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code js-file-line">      dragImage<span class="pl-k">:</span> <span class="pl-c1">null</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code js-file-line">    }, options);</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code js-file-line">    <span class="pl-k">return</span> <span class="pl-v">this</span>.each(<span class="pl-st">function</span> () {</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code js-file-line">      <span class="pl-s">var</span> index, items <span class="pl-k">=</span> $(<span class="pl-v">this</span>).children(options.items), handles <span class="pl-k">=</span> options.handle <span class="pl-k">?</span> items.<span class="pl-s3">find</span>(options.handle) <span class="pl-k">:</span> items;</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code js-file-line">      <span class="pl-k">if</span> (method <span class="pl-k">===</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>reload<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code js-file-line">        $(<span class="pl-v">this</span>).children(options.items).off(<span class="pl-s1"><span class="pl-pds">&#39;</span>dragstart.h5s dragend.h5s selectstart.h5s dragover.h5s dragenter.h5s drop.h5s<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code js-file-line">      }</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code js-file-line">      <span class="pl-k">if</span> (<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span>enable<span class="pl-k">|</span>disable<span class="pl-k">|</span>destroy<span class="pl-k">$</span><span class="pl-pds">/</span></span>.<span class="pl-s3">test</span>(method)) {</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code js-file-line">        <span class="pl-s">var</span> citems <span class="pl-k">=</span> $(<span class="pl-v">this</span>).children($(<span class="pl-v">this</span>).<span class="pl-sc">data</span>(<span class="pl-s1"><span class="pl-pds">&#39;</span>items<span class="pl-pds">&#39;</span></span>)).attr(<span class="pl-s1"><span class="pl-pds">&#39;</span>draggable<span class="pl-pds">&#39;</span></span>, method <span class="pl-k">===</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>enable<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code js-file-line">        <span class="pl-k">if</span> (method <span class="pl-k">===</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>destroy<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code js-file-line">          $(<span class="pl-v">this</span>).off(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortupdate<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code js-file-line">          $(<span class="pl-v">this</span>).removeData(<span class="pl-s1"><span class="pl-pds">&#39;</span>opts<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code js-file-line">          citems.<span class="pl-s3">add</span>(<span class="pl-v">this</span>).removeData(<span class="pl-s1"><span class="pl-pds">&#39;</span>connectWith items<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code js-file-line">            .off(<span class="pl-s1"><span class="pl-pds">&#39;</span>dragstart.h5s dragend.h5s dragover.h5s dragenter.h5s drop.h5s<span class="pl-pds">&#39;</span></span>).off(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortupdate<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code js-file-line">          handles.off(<span class="pl-s1"><span class="pl-pds">&#39;</span>selectstart.h5s<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code js-file-line">        }</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code js-file-line">        <span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code js-file-line">      }</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code js-file-line">      <span class="pl-s">var</span> soptions <span class="pl-k">=</span> $(<span class="pl-v">this</span>).<span class="pl-sc">data</span>(<span class="pl-s1"><span class="pl-pds">&#39;</span>opts<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code js-file-line">      <span class="pl-k">if</span> (<span class="pl-k">typeof</span> soptions <span class="pl-k">===</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>undefined<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code js-file-line">        $(<span class="pl-v">this</span>).<span class="pl-sc">data</span>(<span class="pl-s1"><span class="pl-pds">&#39;</span>opts<span class="pl-pds">&#39;</span></span>, options);</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code js-file-line">      }</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code js-file-line">      <span class="pl-k">else</span> {</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code js-file-line">        options <span class="pl-k">=</span> soptions;</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code js-file-line">      }</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code js-file-line">      <span class="pl-s">var</span> startParent, newParent;</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code js-file-line">      <span class="pl-s">var</span> placeholder <span class="pl-k">=</span> ( options.placeholder <span class="pl-k">===</span> <span class="pl-c1">null</span> ) <span class="pl-k">?</span> $(<span class="pl-s1"><span class="pl-pds">&#39;</span>&lt;<span class="pl-pds">&#39;</span></span> <span class="pl-k">+</span> (<span class="pl-sr"><span class="pl-pds">/</span><span class="pl-k">^</span>ul<span class="pl-k">|</span>ol<span class="pl-k">$</span><span class="pl-pds">/</span>i</span>.<span class="pl-s3">test</span>(<span class="pl-v">this</span>.<span class="pl-sc">tagName</span>) <span class="pl-k">?</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>li<span class="pl-pds">&#39;</span></span> <span class="pl-k">:</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>div<span class="pl-pds">&#39;</span></span>) <span class="pl-k">+</span> <span class="pl-s1"><span class="pl-pds">&#39;</span> class=&quot;sortable-placeholder&quot;/&gt;<span class="pl-pds">&#39;</span></span>) <span class="pl-k">:</span> $(options.placeholder).addClass(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortable-placeholder<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code js-file-line">      $(<span class="pl-v">this</span>).<span class="pl-sc">data</span>(<span class="pl-s1"><span class="pl-pds">&#39;</span>items<span class="pl-pds">&#39;</span></span>, options.items);</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code js-file-line">      placeholders <span class="pl-k">=</span> placeholders.<span class="pl-s3">add</span>(placeholder);</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code js-file-line">      <span class="pl-k">if</span> (options.connectWith) {</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code js-file-line">        $(options.connectWith).<span class="pl-s3">add</span>(<span class="pl-v">this</span>).<span class="pl-sc">data</span>(<span class="pl-s1"><span class="pl-pds">&#39;</span>connectWith<span class="pl-pds">&#39;</span></span>, options.connectWith);</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code js-file-line">      }</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code js-file-line">      items.attr(<span class="pl-s1"><span class="pl-pds">&#39;</span>role<span class="pl-pds">&#39;</span></span>, <span class="pl-s1"><span class="pl-pds">&#39;</span>option<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code js-file-line">      items.attr(<span class="pl-s1"><span class="pl-pds">&#39;</span>aria-grabbed<span class="pl-pds">&#39;</span></span>, <span class="pl-s1"><span class="pl-pds">&#39;</span>false<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code js-file-line">      <span class="pl-c">// Setup drag handles</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code js-file-line">      handles.attr(<span class="pl-s1"><span class="pl-pds">&#39;</span>draggable<span class="pl-pds">&#39;</span></span>, <span class="pl-s1"><span class="pl-pds">&#39;</span>true<span class="pl-pds">&#39;</span></span>).not(<span class="pl-s1"><span class="pl-pds">&#39;</span>a[href], img<span class="pl-pds">&#39;</span></span>).on(<span class="pl-s1"><span class="pl-pds">&#39;</span>selectstart.h5s<span class="pl-pds">&#39;</span></span>, <span class="pl-st">function</span>() {</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code js-file-line">        <span class="pl-k">if</span> (<span class="pl-v">this</span>.dragDrop) {</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code js-file-line">          <span class="pl-v">this</span>.dragDrop();</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code js-file-line">        }</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code js-file-line">        <span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code js-file-line">      }).end();</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code js-file-line">      <span class="pl-c">// Handle drag events on draggable items</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code js-file-line">      items.on(<span class="pl-s1"><span class="pl-pds">&#39;</span>dragstart.h5s<span class="pl-pds">&#39;</span></span>, <span class="pl-st">function</span>(<span class="pl-vpf">e</span>) {</td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code js-file-line">        <span class="pl-s">var</span> dt <span class="pl-k">=</span> e.originalEvent.dataTransfer;</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code js-file-line">        dt.effectAllowed <span class="pl-k">=</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>move<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code js-file-line">        dt.setData(<span class="pl-s1"><span class="pl-pds">&#39;</span>text<span class="pl-pds">&#39;</span></span>, <span class="pl-s1"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code js-file-line">        <span class="pl-k">if</span> (options.dragImage <span class="pl-k">&amp;&amp;</span> dt.setDragImage) {</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code js-file-line">          dt.setDragImage(options.dragImage, <span class="pl-c1">0</span>, <span class="pl-c1">0</span>);</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code js-file-line">        }</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code js-file-line">        index <span class="pl-k">=</span> (dragging <span class="pl-k">=</span> $(<span class="pl-v">this</span>)).addClass(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortable-dragging<span class="pl-pds">&#39;</span></span>).attr(<span class="pl-s1"><span class="pl-pds">&#39;</span>aria-grabbed<span class="pl-pds">&#39;</span></span>, <span class="pl-s1"><span class="pl-pds">&#39;</span>true<span class="pl-pds">&#39;</span></span>).<span class="pl-sc">index</span>();</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code js-file-line">        draggingHeight <span class="pl-k">=</span> dragging.<span class="pl-sc">outerHeight</span>();</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code js-file-line">        startParent <span class="pl-k">=</span> $(<span class="pl-v">this</span>).<span class="pl-sc">parent</span>();</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code js-file-line">        dragging.<span class="pl-sc">parent</span>().triggerHandler(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortstart<span class="pl-pds">&#39;</span></span>, {item<span class="pl-k">:</span> dragging, startparent<span class="pl-k">:</span> startParent});</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code js-file-line">      }).on(<span class="pl-s1"><span class="pl-pds">&#39;</span>dragend.h5s<span class="pl-pds">&#39;</span></span>,<span class="pl-st">function</span> () {</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code js-file-line">          <span class="pl-k">if</span> (<span class="pl-k">!</span>dragging) {</td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code js-file-line">            <span class="pl-k">return</span>;</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code js-file-line">          }</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code js-file-line">          dragging.removeClass(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortable-dragging<span class="pl-pds">&#39;</span></span>).attr(<span class="pl-s1"><span class="pl-pds">&#39;</span>aria-grabbed<span class="pl-pds">&#39;</span></span>, <span class="pl-s1"><span class="pl-pds">&#39;</span>false<span class="pl-pds">&#39;</span></span>).show();</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code js-file-line">          placeholders.detach();</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code js-file-line">          newParent <span class="pl-k">=</span> $(<span class="pl-v">this</span>).<span class="pl-sc">parent</span>();</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code js-file-line">          <span class="pl-k">if</span> (index <span class="pl-k">!==</span> dragging.<span class="pl-sc">index</span>() <span class="pl-k">||</span> startParent.get(<span class="pl-c1">0</span>) <span class="pl-k">!==</span> newParent.get(<span class="pl-c1">0</span>)) {</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code js-file-line">            dragging.<span class="pl-sc">parent</span>().triggerHandler(<span class="pl-s1"><span class="pl-pds">&#39;</span>sortupdate<span class="pl-pds">&#39;</span></span>, {item<span class="pl-k">:</span> dragging, oldindex<span class="pl-k">:</span> index, startparent<span class="pl-k">:</span> startParent, endparent<span class="pl-k">:</span> newParent});</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code js-file-line">          }</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code js-file-line">          dragging <span class="pl-k">=</span> <span class="pl-c1">null</span>;</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code js-file-line">          draggingHeight <span class="pl-k">=</span> <span class="pl-c1">null</span>;</td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code js-file-line">        }).<span class="pl-s3">add</span>([<span class="pl-v">this</span>, placeholder]).on(<span class="pl-s1"><span class="pl-pds">&#39;</span>dragover.h5s dragenter.h5s drop.h5s<span class="pl-pds">&#39;</span></span>, <span class="pl-st">function</span>(<span class="pl-vpf">e</span>) {</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code js-file-line">          <span class="pl-k">if</span> (<span class="pl-k">!</span>items.is(dragging) <span class="pl-k">&amp;&amp;</span> options.connectWith <span class="pl-k">!==</span> $(dragging).<span class="pl-sc">parent</span>().<span class="pl-sc">data</span>(<span class="pl-s1"><span class="pl-pds">&#39;</span>connectWith<span class="pl-pds">&#39;</span></span>)) {</td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code js-file-line">            <span class="pl-k">return</span> <span class="pl-c1">true</span>;</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code js-file-line">          }</td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code js-file-line">          <span class="pl-k">if</span> (e.<span class="pl-sc">type</span> <span class="pl-k">===</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>drop<span class="pl-pds">&#39;</span></span>) {</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code js-file-line">            e.stopPropagation();</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code js-file-line">            placeholders.filter(<span class="pl-s1"><span class="pl-pds">&#39;</span>:visible<span class="pl-pds">&#39;</span></span>).after(dragging);</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code js-file-line">            dragging.trigger(<span class="pl-s1"><span class="pl-pds">&#39;</span>dragend.h5s<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code js-file-line">            <span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code js-file-line">          }</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code js-file-line">          e.preventDefault();</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code js-file-line">          e.originalEvent.dataTransfer.dropEffect <span class="pl-k">=</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>move<span class="pl-pds">&#39;</span></span>;</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code js-file-line">          <span class="pl-k">if</span> (items.is(<span class="pl-v">this</span>)) {</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code js-file-line">            <span class="pl-s">var</span> thisHeight <span class="pl-k">=</span> $(<span class="pl-v">this</span>).<span class="pl-sc">outerHeight</span>();</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code js-file-line">            <span class="pl-k">if</span> (options.forcePlaceholderSize) {</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code js-file-line">              placeholder.<span class="pl-sc">height</span>(draggingHeight);</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code js-file-line">            }</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code js-file-line">            <span class="pl-c">// Check if $(this) is bigger than the draggable. If it is, we have to define a dead zone to prevent flickering</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code js-file-line">            <span class="pl-k">if</span> (thisHeight <span class="pl-k">&gt;</span> draggingHeight) {</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code js-file-line">              <span class="pl-c">// Dead zone?</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code js-file-line">              <span class="pl-s">var</span> deadZone <span class="pl-k">=</span> thisHeight <span class="pl-k">-</span> draggingHeight, offsetTop <span class="pl-k">=</span> $(<span class="pl-v">this</span>).offset().<span class="pl-sc">top</span>;</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code js-file-line">              <span class="pl-k">if</span> (placeholder.<span class="pl-sc">index</span>() <span class="pl-k">&lt;</span> $(<span class="pl-v">this</span>).<span class="pl-sc">index</span>() <span class="pl-k">&amp;&amp;</span> e.originalEvent.<span class="pl-sc">pageY</span> <span class="pl-k">&lt;</span> offsetTop <span class="pl-k">+</span> deadZone) {</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code js-file-line">                <span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code js-file-line">              }</td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code js-file-line">              <span class="pl-k">else</span> <span class="pl-k">if</span> (placeholder.<span class="pl-sc">index</span>() <span class="pl-k">&gt;</span> $(<span class="pl-v">this</span>).<span class="pl-sc">index</span>() <span class="pl-k">&amp;&amp;</span> e.originalEvent.<span class="pl-sc">pageY</span> <span class="pl-k">&gt;</span> offsetTop <span class="pl-k">+</span> thisHeight <span class="pl-k">-</span> deadZone) {</td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code js-file-line">                <span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code js-file-line">              }</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code js-file-line">            }</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code js-file-line">            dragging.hide();</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code js-file-line">            $(<span class="pl-v">this</span>)[placeholder.<span class="pl-sc">index</span>() <span class="pl-k">&lt;</span> $(<span class="pl-v">this</span>).<span class="pl-sc">index</span>() <span class="pl-k">?</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>after<span class="pl-pds">&#39;</span></span> <span class="pl-k">:</span> <span class="pl-s1"><span class="pl-pds">&#39;</span>before<span class="pl-pds">&#39;</span></span>](placeholder);</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code js-file-line">            placeholders.not(placeholder).detach();</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code js-file-line">          } <span class="pl-k">else</span> <span class="pl-k">if</span> (<span class="pl-k">!</span>placeholders.is(<span class="pl-v">this</span>) <span class="pl-k">&amp;&amp;</span> <span class="pl-k">!</span>$(<span class="pl-v">this</span>).children(options.items).<span class="pl-sc">length</span>) {</td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code js-file-line">            placeholders.detach();</td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code js-file-line">            $(<span class="pl-v">this</span>).append(placeholder);</td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code js-file-line">          }</td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code js-file-line">          <span class="pl-k">return</span> <span class="pl-c1">false</span>;</td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code js-file-line">        });</td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code js-file-line">    });</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code js-file-line">  };</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code js-file-line">})(jQuery);</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.05896s from github-fe128-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-70c417717c6c19f325c76c40de062c2e005f8cfec564283d7818b5b0fe8c0d27.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-9adb85255293205044bdded05300662b60a3fe712cb26ee7e5ca313a9f2ce3f7.js"></script>
      
      

  </body>
</html>

