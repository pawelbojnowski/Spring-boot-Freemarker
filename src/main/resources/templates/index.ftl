<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<#include "template/head.ftl">
<body>
<div class="container">


    <div id="content">
    <#include "template/header.ftl">

        <div class="row">
            <div class="col-md-8  ">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6"> Contacts</div>
                            <div class="col-xs-6 text-right">
                                <form>
                                    <a href="/index/new" class="btn btn-sm btn-success">+</a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">


                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Name</th>
                                <th scope="col">Number</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            <#list contactList as contact>
                            <tr>
                                <td>
                                ${contact.id}
                                </td>
                                <td>
                                ${contact.name}
                                </td>
                                <td>
                                ${contact.number}
                                </td>
                                <td>
                                    <a class="btn btn-sm btn-info" href="/index/${contact.id}">Edit</a>
                                    <a class="btn btn-sm btn-info" href="/index/delete/${contact.id}">Remove</a>
                                </td>
                            </tr>
                            </#list>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        <#if contact??>
            <div class="col-md-4">
                <form method="${method}" action="/index/save" name="entityForm" id="entityForm">

                    <div class="panel panel-default">
                        <div class="panel-heading"> Create new</div>
                        <div class="panel-body">


                            <input name="id" type="hidden" value="<#if contact.id?has_content>${contact.id}</#if>"></input>

                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" name="name" id="name" value="<#if contact.name?has_content>${contact.name}</#if>"/>
                            </div>
                            <div class="form-group">
                                <label>Number</label>
                                <input type="text" class="form-control" name="number" id="number" value="<#if contact.number?has_content>${contact.number}</#if>"/>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-sm btn-info" value="Save" type="submit"/>
                                <a class="btn btn-sm btn-info" href="/index/cancel">Cancel</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </#if>
        </div>
    </div>


</div>
</body>
</html>