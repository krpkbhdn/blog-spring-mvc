<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="mb1">Add new user</div>
    ${message?ifExists}
    <@l.registration/>
</@c.page>