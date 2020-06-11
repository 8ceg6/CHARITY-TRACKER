# README
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
 <!-- <%= char_fld.text_field :name, list: "charities_autocomplete" %><br>
    <datalist id="charities_autocomplete">
    <% Charity.all.each do |c| %>
    <option value="<%= c.name %>">
    <%end%>
    </datalist> -->