<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">OfficeProject</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
    <#if !currentUser??>
        <li class="nav-item active"><a href="/login">Log in</a></li>
    </#if>
    <#if currentUser?? && currentUser.role == "ADMIN">
        <li class="nav-item active"><a class="nav-link" href="/user/create">Добавить нового пользователя</a></li>
    </#if>
    <#if currentUser??>
        <li class="nav-item active"><a class="nav-link" href="/user/${currentUser.id}">Профиль</a></li>
        <li class="nav-item active"><a class="nav-link" href="/groups">Группы</a></li>
        <li class="nav-item active"><a class="nav-link" href="/users">Просмотреть всех пользователей</a></li>
    </#if>
        </ul>
        <#if currentUser??>
        <form class="form-inline my-2 my-lg-0" action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Log out</button>
        </form>
        </#if>
    </div>
</nav>