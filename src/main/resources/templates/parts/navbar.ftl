<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand mr-5" href="/">Java<b>Evolve</b></a>
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
            <li class="nav-item active mr-2">
                <a class="nav-link" href="#">Courses</a>
            </li>
        </ul>

        <#if know>
            <div class="navbar-text mr-3">${name}</div>
            <@l.logout />
        <#else >
            <a href="/login" class="btn btn-primary">Sign In</a>
        </#if>
    </div>
</nav>