<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="key1, key2, key3,csv,turtle,convertor " />
    <meta name="description" content="A  for the CSV to TURTLE Translator" />
    <title>CSV to TURTLE Translator 1.o </title>

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
        <a class="navbar-brand" href="#">CSV TO TURTLE TRANSLATOR  1.o </a>
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
                    Options
                    </li>
                    <s:url var="index_url" action="index"/>
                    <li class="active"><s:a href="%{index_url}">Option 1</s:a></li>
                    <s:url var="validation_url" action="validation"/>
                    <li><s:a href="%{validation_url}">Option 2</s:a></li>
                    <s:url var="custom_url" action="custom"/>
                    <li><s:a href="%{custom_url}">Option 3</s:a></li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">

            <h1>CSV to TURTLE Translator </h1>

         

         
            <s:actionmessage theme="bootstrap"/>
         


           
            <s:form action="UploadFile" method="post" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
                label="Under Construction">
                
                <s:select
                        tooltip="Choose Your Encoding"
                        label="Favorite Encoding"
                        elementCssClass="col-sm-4"
                        list="{'Encoding 1', 'Encoding 2', 'Encoding 3'}"
                        name="favouriteColor"
                        emptyOption="true"
                        headerKey="None"
                        headerValue="None"/>

             

                <s:doubleselect
                        tooltip="Choose Your Encoding 2"
                        label="Encoding2"
                        name="region" list="{'E1', 'E2'}"
                        value="'South'"
                        doubleValue="'Florida'"
                        doubleList="top == 'E1' ? {'E11', 'E12'} : {'E21', 'E22'}"
                        doubleName="state"
                        headerKey="-1"
                        headerValue="---------- Please Select ----------"
                        emptyOption="true"/>

                       
                     <s:file tooltip="Upload Your File" label="File" name="file"></s:file>
                     
                  
                 
				  <s:inputtransferselect
                        tooltip="Add Your Files2"
                        label="Files"
                        name="inputLeftSideCartoonCharacters"
                        addLabel="Add file"
                        removeLabel="Remove file"
                        removeAllLabel="Remove all files"
                        upLabel="Move up"
                        downLabel="Move down"
                        leftTitle="Add Files"
                        rightTitle="Existing Filess"
                        list="{'File1', 'File2', 'File3'}"
                 />


                <div class="form-group">
                    <div class="col-sm-offset-3 col-md-9">
                        <s:submit  value="Upload" cssClass="btn btn-primary"/>     
                    </div>
                </div>
            </s:form>
        </div>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>

    <p>Created by <a href="#" target="_blank">@Me & You</a>.</p>
</footer>
</body>
</html>
