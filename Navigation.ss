<nav class="row">
    <div class="large-12 columns">
        <nav class="top-bar" data-topbar role="navigation">
            <ul class="title-area">
                <li class="name">
                </li>
                <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
                <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
            </ul>

            <section class="top-bar-section">
                <ul>
                    <% loop $Menu(1) %>
                        <li <%if $Children %>class="has-dropdown"<% end_if %>>
                            <a href="$Link">$MenuTitle</a>
                            <% if $Children %>
                                <ul class="dropdown">
                                    <% loop $Children %>
                                        <li <%if $Children %>class="has-dropdown"<% end_if %>>
                                            <a href="$Link">$MenuTitle</a>
                                            <% if $Children %>
                                                <ul class="dropdown">
                                                    <% loop $Children %>
                                                        <li <%if $Children %>class="has-dropdown"<% end_if %>>
                                                            <a href="$Link">$MenuTitle</a>
                                                        </li>
                                                    <% end_loop %>
                                                </ul>
                                            <% end_if %>
                                        </li>
                                    <% end_loop %>
                                </ul>
                            <% end_if %>
                        </li>
                    <% end_loop %>
                </ul>
            </section>
        </nav>
    </div>
</nav>
