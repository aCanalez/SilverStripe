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
