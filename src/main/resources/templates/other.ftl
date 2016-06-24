<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<#include "template/head.ftl">
<body>

<div class="container">
    <#include "template/header.ftl">

    <div id="content">
        <div class="row">
            <div class="col-md-12"><a href="http://freemarker.incubator.apache.org/docs/ref_builtins.html">Documentation</a></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <label>Model</label>

                <p>${jsonModel}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">


                <div class="row">
                    <div class="col-md-2">
                        <label>Description</label>
                    </div>
                    <div class="col-md-6">
                        <label>Expresion</label>
                    </div>
                    <div class="col-md-4">
                        <label>Result</label>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-md-2">
                        For
                    </div>
                    <div class="col-md-6">
                        <pre>
&lt;ul&gt;
    <strong>&lt;#list </strong>model.listOfObject <strong>as </strong>item<strong>&gt;
                        </strong><strong></strong>&lt;li&gt;<strong>&#36;{</strong>item<strong>}</strong>&lt;/li&gt;
    <strong>&lt;/#list&gt;</strong>
&lt;/ul&gt;
                            </pre>
                    </div>
                    <div class="col-md-4">
                        <ul>
                            <#list model.listOfObject as item>
                                <li>${item}</li>
                            </#list>
                        </ul>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-md-2">
                        For with else
                    </div>
                    <div class="col-md-6">
                       <pre>
&lt;ul&gt;
<strong>&lt;#list </strong>model.emptyList <strong>as </strong>item<strong>&gt;
                       </strong><strong> </strong>&lt;li&gt;<strong&#36;{</strong>item<strong>}</strong>&lt;/li&gt;
    <strong>&lt;#else&gt;
    </strong><strong> </strong>&lt;label&gt; The List is empty but NOT null &lt;/label&gt;
<strong>&lt;/#list&gt;</strong>
&lt;/ul&gt;
                               </pre>
                    </div>
                    <div class="col-md-4">
                        <ul>
                            <#list model.emptyList as item>
                                <li>${item}</li>
                                <#else>
                                    The List is empty but NOT null
                            </#list>
                        </ul>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-md-2">
                        Variable
                    </div>
                    <div class="col-md-6">
                        <pre>
<strong>&lt;#assign </strong>variableHello = &quot;Hello <strong>&#36;{</strong>model.name<strong>}</strong>!&quot;<strong>&gt;
                        </strong><strong>&#36;{</strong>variableHello<strong>}</strong></pre>
                    </div>
                    <div class="col-md-4">
                        <#assign variableHello = "Hello ${model.name}!">
                            ${variableHello}
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-md-2">
                        Include
                    </div>
                    <div class="col-md-6">
                       <pre>
<strong>&lt;#include </strong>&quot;include.ftl&quot;<strong>&gt;</strong>
                       </pre>
                    </div>
                    <div class="col-md-4">
                        <#include "include.ftl">
                    </div>
                </div>
                <hr/>

                <div class="row">
                    <div class="col-md-2">
                        Makro
                    </div>
                    <div class="col-md-6">
                        <pre>
<strong>&lt;#macro </strong>exampleMakro viarableForMakro=&quot;&quot;<strong>&gt;
                        </strong><strong> </strong>&lt;label&gt;Example makro: <strong>&#36;{</strong>viarableForMakro<strong>}</strong>&lt;/label&gt;&lt;/br&gt;
<strong>&lt;/#macro&gt;
</strong><em>&lt;#-- call the macro: --&gt;
                        </em><strong>&lt;@</strong>exampleMakro &quot;Java&quot;<strong>/&gt;
                        </strong><strong>&lt;@</strong>exampleMakro &quot;Spring boot&quot;<strong>/&gt;
                        </strong><em>&lt;#--OR--&gt;
                        </em><strong>&lt;#call </strong>exampleMakro(&quot;Say something!&quot;)<strong>&gt;</strong>
                            </pre>
                    </div>
                    <div class="col-md-4">
                        <#macro exampleMakro viarableForMakro="">
                            <label>Example makro: ${viarableForMakro}</label></br>
                        </#macro>
                        <#-- call the macro: -->
                            <@exampleMakro "Java"/>
                            <@exampleMakro "Spring boot"/>
                            <#--OR-->
                                <#call exampleMakro("Say something!")>
                    </div>
                </div>
                <hr/>
            </div>
        </div>
    </div>
    <div id="footer">
        <hr/>
        <div class="text-center"><h5>#Java #Spring boot #Freemarker</h5></div>
    </div>
</div>
</body>
</html>