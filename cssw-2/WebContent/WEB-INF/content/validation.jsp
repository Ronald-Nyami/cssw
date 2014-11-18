<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Key1,key2" />
    <meta name="description" content="CSV TO TTL Converter" />
    <title>Register to Download </title>


    <sj:head jqueryui="false"/>
    <sb:head includeScripts="true" includeScriptsValidation="true"/>

    <style type="text/css">
        body {
            padding-top: 60px; 
        }
    </style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">CSV TO TTL</a>
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
                    <li class="active"><s:a href="%{validation_url}">Option2</s:a></li>
                   
                    <s:url var="custom_url" action="custom"/>
                    <li><s:a href="%{custom_url}">Option3</s:a></li>
                 </ul>
            </div>
        </div>
        <div class="col-md-9">

            <h1>Register To Download</h1>

            

            <s:actionerror theme="bootstrap"/>
            <s:actionmessage theme="bootstrap"/>
            <s:fielderror theme="bootstrap"/>


            <s:form id="validationForm"
                    action="validation-submit"
                    theme="bootstrap"
                    cssClass="form-horizontal"
                    labelCssClass="col-sm-2"
                    elementCssClass="col-sm-7"
                    label="fields with * compulsory">

                <s:textfield
                        label="Username"
                        name="user"
                        requiredLabel="true"
                        tooltip="Enter your Username here"/>

                <s:password
                        label="Password"
                        name="password"
                        requiredLabel="true"
                        tooltip="Enter your Password here"/>

                <s:textarea
                        tooltip="Enter your Biography"
                        label="Biography"
                        name="biograhy"
                        cols="20"
                        rows="3"/>

                <s:select
                        tooltip="Choose Your Version"
                        label="Version"
                        list="{'1', '2', '3'}"
                        name="favourite"
                        emptyOption="true"/>

                <s:checkbox
                        tooltip="Confirmed that you accept the Agreement"
                        label="Accept the Agreement?"
                        name="agree"/>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-md-9">
                        <sj:submit cssClass="btn btn-primary" formIds="validationForm" validate="true" validateFunction="bootstrapValidation"/>
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
