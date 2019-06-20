<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand mr-5 ml-3" href="/">Java<b>Evolve</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active mr-2">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item active mr-2">
                <a class="nav-link" href="#">Blog</a>
            </li>
            <li class="nav-item active mr-2">
                <a class="nav-link" href="#">Forum</a>
            </li>
            <li class="nav-item active mr-2">
                <a class="nav-link" href="#">About</a>
            </li>
        </ul>

        <#if know>
            <div class="dropdown mr-3">
                <button type="button" class="btn btn-dark dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20">
                    ${name}<#if isAdmin> [ADMIN]</#if>
                </button>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuOffset">
                    <a class="dropdown-item" href="#">Profile</a>
                    <div class="dropdown-divider"></div>
                    <#if isAdmin>
                        <a class="dropdown-item" href="/article">Articles</a>
                        <a class="dropdown-item" href="#">Users</a>
                        <a class="dropdown-item" href="#">Moderation</a>
                        <div class="dropdown-divider"></div>
                    </#if>
                    <@l.logout />
                </div>
            </div>
        <#else >
            <@l.login/>
        </#if>

</nav>