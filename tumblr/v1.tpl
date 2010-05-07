<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>{block:PostTitle}{PostTitle} - {/block:PostTitle}{Title}</title>
    <link rel="icon" href="{Favicon}"/>
    <link rel="alternate" type="application/rss+xml" title="RSS" href="{RSS}"/>
    {block:Description}<meta name="description" content="{MetaDescription}" />{/block:Description}
    <meta name="viewport" content="width=960"/>
    
    <!-- Theme Vars -->
    <meta name="text:Disqus Shortname" content="" />
    <meta name="text:Stylesheet URL" content="" />
    <meta name="text:Javascript URL" content="" />
    <meta name="text:Javascript Plugins URL" content="" />
    <meta name="text:Google Analytics Account" content="" />
    <!-- /Theme Vars -->
    
    {block:IfStylesheetURL}
    <link rel="stylesheet" href="{text:Stylesheet URL}" type="text/css" media="screen,projection" title="Primary Stylesheet" charset="utf-8" />
    {/block:IfStylesheetURL}
    <style type="text/css">
    {CustomCSS}
    </style>
    {block:IfJavascriptURL}
    <script src="http://www.google.com/jsapi"></script>
    <script>google.load("jquery", "1");</script>
    {block:IfJavascriptPluginsURL}<script src="{text:Javascript Plugins URL}" type="text/javascript" charset="utf-8"></script>{/block:IfJavascriptPluginsURL}
    <script src="{text:Javascript URL}" type="text/javascript" charset="utf-8"></script>
    {/block:IfJavascriptURL}

  </head>
  <body>
    <div class="wrapper">
      <div class="header">
        <h1><a href="/">{Title}</a></h1>
            <p style="display: none; {block:HasPages}display: block;{/block:HasPages}{block:AskEnabled}display: block;{/block:AskEnabled}{block:SubmissionsEnabled}display: block;{/block:SubmissionsEnabled}">
            {block:HasPages}
                {block:Pages}<a href="{URL}">{Label}</a>&nbsp;&nbsp;&nbsp;{/block:Pages}
                {block:AskEnabled}<a href="/ask">{AskLabel}</a>&nbsp;&nbsp;&nbsp;{/block:AskEnabled}
                {block:SubmissionsEnabled}<a href="/submit">{SubmitLabel}</a>{/block:SubmissionsEnabled}
            {/block:HasPages}
            </p>
        <p>{Description}</p>
      </div>
      <div class="main">
        {block:SearchPage}
        <div class="post">
          <div class="datetime">
            {SearchResultCount} result(s)
          </div>
          searched for <em>{SearchQuery}</em></h2>
        </div>
        {/block:SearchPage}
        {block:Posts}
        <div class="post">
          <div class="datetime">
            {block:Date}{block:NewDayDate}{Month} {DayOfMonth}, {Year} at {/block:NewDayDate}{12Hour}:{Minutes}{AmPm}<br />
            {block:IfDisqusShortname}<a href="{Permalink}#disqus_thread"></a><br />{block:IfDisqusShortname}{/block:Date}
            {block:Pagination}
            <a href="{Permalink}">{NoteCountWithLabel}</a><br />
            {/block:Pagination}
            {block:SearchPage}
            <a href="{Permalink}">{NoteCountWithLabel}</a><br />
            {/block:SearchPage}
            {block:PermalinkPage}
            <a href="/">home</a><br />
            {/block:PermalinkPage}
            {block:RebloggedFrom}reblogged from <a href="{ReblogParentURL}">{ReblogRootName}</a><br />{/block:RebloggedFrom}
          </div>
        {block:Regular}
          {block:Title}<h2>{Title}</h2>{/block:Title}
          <p style="regular_post_body">{Body}</p>
        {/block:Regular}

        {block:Photo}
          <span class="photo">{LinkOpenTag}<img src="{PhotoURL-500}" alt="{PhotoAlt}" title="{PhotoAlt}">{LinkCloseTag}</span>
          <p>{Caption}</p>
        {/block:Photo}

        {block:Quote}
          <p><span class="{Length}_quote">{Quote}</span></p>
          {block:Source}<p>&mdash;&nbsp;{Source}</p>{/block:Source}
        {/block:Quote}

        {block:Video}
          {Video-500}
          <p>{Caption}</p>
        {/block:Video}

        {block:Audio}
          {AudioPlayerGrey}
          <p>{Caption}</p>
        {/block:Audio}

        {block:Link}
          <h2><a href="{URL}" {Target}>{Name}</a>&nbsp;&rarr;</h2>
          {block:Description}<p>{Description}</p>{/block:Description}
        {/block:Link}

        {block:Conversation}
          {block:Title}<h2>{Title}</h2>{/block:Title}
          <p>
          {block:Lines}
          {block:Label}<strong>{Label}</strong>{/block:Label} {Line}<br />
          {/block:Lines}
          </p>
        {/block:Conversation}
        </div>
        {/block:Posts}

        {block:PermalinkPage}
        {block:PostNotes}
        <div class="post">
          <h3>Notes</h3>
          <p>{PostNotes}</p>
        </div>
        {/block:PostNotes}
        
        {block:IfDisqusShortname}
        <div class="post disqus">
            <div id="disqus_thread"></div>
            <script type="text/javascript" src="http://disqus.com/forums/{text:Disqus Shortname}/embed.js"></script>
            <noscript><a href="http://{text:Disqus Shortname}.disqus.com/?url=ref">View the discussion thread.</a></noscript>
        </div>
        {/block:IfDisqusShortname}
        {/block:PermalinkPage}


        {block:Pagination}
        {block:NextPage}
        <div class="navleft">
          &larr;&nbsp;<a href="{NextPage}">next</a>
        </div>
        {/block:NextPage}
        {block:PreviousPage}
        <div class="navright">
          <a href="{PreviousPage}">previous</a>&nbsp;&rarr;
        </div>
        {/block:PreviousPage}
        <div class="navcenter">
          <span class="long_quote">{CurrentPage}.</span>
        </div>
        {/block:Pagination}
        {block:PermalinkPagination}
        {block:NextPost}
        <div class="navleft">
          &larr;&nbsp;<a href="{NextPost}">next post</a>
        </div>
        {/block:NextPost}
        {block:PreviousPost}
        <div class="navright">
          <a href="{PreviousPost}">previous post</a>&nbsp;&rarr;
        </div>
        {/block:PreviousPost}
        {/block:PermalinkPagination}

      </div>
      <div class="post">
        <div class="navcenter">
          <form action="/search" method="get">
            <a href="/">home</a>&nbsp;&nbsp;<a href="/archive/">archive</a>&nbsp;&nbsp;<a href="/mobile">mobile</a>&nbsp;&nbsp;<a href="{RSS}">rss</a>&nbsp;&nbsp;<input type="text" name="q" value="{SearchQuery}"/>&nbsp;&nbsp;<input type="submit" value="Search"/>
          </form>
        </div>
      </div>
      <div class="post">
        <div class="navcenter">
          Themed by <a href="http://langer.tumblr.com">langer</a>, powered by <a href="http://www.tumblr.com">Tumblr</a>.
        </div>
      </div>
    </div>
    
    {block:IfDisqusShortname}
    <script type="text/javascript">
    //<![CDATA[
    (function() {
        var links = document.getElementsByTagName('a');
        var query = '?';
        for(var i = 0; i < links.length; i++) {
        if(links[i].href.indexOf('#disqus_thread') >= 0) {
            query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
        }
        }
        document.write('<script charset="utf-8" type="text/javascript" src="http://disqus.com/forums/{text:Disqus Shortname}/get_num_replies.js' + query + '"></' + 'script>');
    })();
    //]]>
    </script>
    {/block:IfDisqusShortname}
    
    {block:IfGoogleAnalyticsAccount}
    <script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <script type="text/javascript">
    try {
    var pageTracker = _gat._getTracker("{text:Google Analytics Account}");
    pageTracker._trackPageview();
    } catch(err) {}</script>
    {/block:IfGoogleAnalyticsAccount}
  </body>
</html>