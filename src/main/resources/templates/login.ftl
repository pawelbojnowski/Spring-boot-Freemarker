<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<#include "template/head.ftl">
<body>


<div class="container">

    <div id="content">
        <div class="text-center">
            <h1>Spring boot + Thymeleafe</h1>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-4 col-md-offset-4 vcenter">


                <form action="/login" method="POST">
                    <div class="panel panel-default">

                        <div class="panel-body">



                            <div class="form-group ">
                                <label>Login</label>
                                <input type="text" class="form-control" name="username" id="username"/>
                            </div>
                            <div class="form-group ">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" id="password"/>
                            </div>
                            <div class="form-group col-xs-4">
                                <input type="submit" class="btn btn-sm btn-info" value="Log in"/>
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