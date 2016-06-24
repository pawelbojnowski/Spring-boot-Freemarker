<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<#include "template/head.ftl">
<body>
<div class="container">
<#include "template/header.ftl">
<div id="content">
    <div class="row">
        <div class="col-md-8  ">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-6"> Contacts</div>
                        <div class="col-xs-6 text-right">
                            <form>
                                <input class="btn btn-sm btn-success" value="+"/>
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
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                Jan Kowalski
                            </td>
                            <td>
                                111111111
                            </td>
                            <td>
                                <input type="submit" class="btn btn-sm btn-info" value="Edit"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                2
                            </td>
                            <td>
                                Maciej Nowak
                            </td>
                            <td>
                                222222222
                            </td>
                            <td>
                                <input type="submit" class="btn btn-sm btn-info" value="Edit"/>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        <div class="col-md-4  ">
            <form enctype="application/x-www-form-urlencoded" action="#" method="post" name="entityForm" id="entityForm">
                <div class="panel panel-default">
                    <div class="panel-heading"> Create new</div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="entityForm:name" id="entityForm:name"/>
                        </div>
                        <div class="form-group">
                            <label>Number</label>
                            <input type="text" class="form-control" name="entityForm:number" id="entityForm:number"/>
                        </div>
                        <div class="form-group">
                            <input class="btn btn-sm btn-info" value="Save"/>
                            <input class="btn btn-sm btn-info" value="Cancel"/>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</div>
</body>
</html>