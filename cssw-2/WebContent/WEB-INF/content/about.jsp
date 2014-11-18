<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="key1, key2 , about" />
    <meta name="description" content="A CSV TO TTL Converter - About" />
    <title>About - CSVTOTTL - <s:text name="showcase.version"/></title>

  
    <sb:head includeScripts="false" includeScriptsValidation="false"/>
	
    <style type="text/css">
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">CSVTOTTL</a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <s:url var="index_url" action="index"/>
            <li><s:a href="%{index_url}">Home</s:a></li>
            <s:url var="about_url" action="about"/>
            <li class="active"><s:a href="%{about_url}">About</s:a></li>
            <li><a href="#">Project</a></li>
        </ul>
    </div>
</nav>


<div class="container" role="main">

    <h1>CSVTOTTL</h1>

    <h2>Project</h2>
    <ul>
        <li><a href="#">Project @ GITHUB</a></li>
        <li><a href="#">Download</a></li>
    </ul>


    <h2>Developer</h2>
    <ul>
        <li><a href="#">Developer Homepage and Contact</a></li>
        <li><a href="#">Twitter News</a></li>
    </ul>

    <footer class="footer" style="margin-top: 100px;">
        <p class="pull-right"><a href="#">Back to top</a></p>

        <p>Created by <a href="http://twitter.com/#" target="_blank">@Me & You</a>.</p>
    </footer>

</div>

</body>
</html>
