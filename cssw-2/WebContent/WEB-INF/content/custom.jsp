<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="key1, about" />
    <meta name="description" content="Customized Layouts " />
    <title>Customized Layouts</title>

  
    <sb:head includeScripts="true" includeStyles="false"/>
    <link rel="stylesheet" href="<s:url value="/styles/bootstrap-superhero.css" />" type="text/css"/>
    <style type="text/css">
        body {
            padding-top: 60px; 
        }
    </style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">CST TO TTL </a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <s:url var="index_url" action="index"/>
            <li class="active"><s:a href="%{index_url}">Home</s:a></li>
            <s:url var="about_url" action="about"/>
            <li><s:a href="%{about_url}">About</s:a></li>
            <li><a href="#">Project</a></li>
        </ul>
    </div>
</nav>


<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header">
                   Under Construction
                    </li>
                    <s:url var="index_url" action="index"/>
                    <li><s:a href="%{index_url}">Option1</s:a></li>
                    
                    <s:url var="validation_url" action="validation"/>
                    <li><s:a href="%{validation_url}">Option2</s:a></li>
                   
                    <s:url var="custom_url" action="custom"/>
                    <li class="active"><s:a href="%{custom_url}">Option3</s:a></li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">

            <h1>Tutorial</h1>

          

            <pre>
			--> Step1
    &lt;sb:head includeScripts=&quot;true&quot; includeStyles=&quot;false&quot; includeStylesResponsive=&quot;true&quot;/&gt;
    &lt;link rel=&quot;stylesheet&quot; href=&quot;&lt;s:url value=&quot;/styles/bootstrap-superhero.css&quot; /&gt;&quot; type=&quot;text/css&quot;/&gt;
            </pre>

            <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form action="index" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                    label="...">
                
  

                <s:select
                        tooltip="Choose Your Favourite Encoding"
                        label="Encoding"
                        list="{'E1', 'E2', 'E3'}"
                        name="favouriteColor"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>
 
  
 
  
                <s:file
                        tooltip="Upload Your Picture"
                        label="Picture"
                        name="picture"/>

                <s:optiontransferselect
                        tooltip="Select ..."
                        label="..."
                        name="leftSideCartoonCharacters"
                        leftTitle="Left Title"
                        rightTitle="Right Title"
                        list="{'A', 'B', 'C'}"
                        multiple="true"
                        headerKey="headerKey"
                        headerValue="--- Please Select ---"
                        emptyOption="true"
                        doubleList="{'Q', 'R', 'S'}"
                        doubleName="rightSideCartoonCharacters"
                        doubleHeaderKey="doubleHeaderKey"
                        doubleHeaderValue="--- Please Select ---"
                        doubleEmptyOption="true"
                        doubleMultiple="true"/>
  

                <div class="form-group">
                    <div class="col-sm-offset-3 col-md-9">
                        <s:submit cssClass="btn btn-primary"/>
                    </div>
                </div>
            </s:form>
        </div>
    </div>

    <footer class="footer">
        <p class="pull-right"><a href="#">Back to top</a></p>

        <p>Created by <a href="http://twitter.com/#" target="_blank">@Me & You</a>.</p>
    </footer>

</div>

</body>
</html>
