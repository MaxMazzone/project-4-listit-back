<img src=https://imgur.com/a/DRr4Q>

List-it is an apartment listing app which allows users to browse listings posted by other users as well as posting their own listing with photos.

The API can be found here:
https://github.com/stgeorge3/project-4-listit-back

https://possessed-moonlight-45582.herokuapp.com/

The Client can be found here:
https://github.com/stgeorge3/project-4-listit-client

https://stgeorge3.github.io/project-4-listit-client/

Technologies used include:
Ember.js, Ruby on Rails, Imgur 3rd party api, bootstrap, CSS, HTML.

In future iterations of the project, I will be increasing the usability and visibility of photos. I will also increase the options for listing criteria and search.

Planning started with wireframing and ERDs. The back end API was mostly completed before starting the client so most end-points could be tested. The app originally did not support image upload and implementing this proved to be complex as ruby on rails and ember are both very opinionated. Many of the addons available for image upload do not neccessarily  communicate well. Imgur api turned out to be flexible and straight forward. The client parses the base64 data from the photo and sends the request to Imgur where it is hosted online. imgur returns the url to the client which then sends that to the server to be stored.

ERD and Planning:

users will have many apartments
apartments will be owned by a user

an apartment will have:
A user ID
address: string
price per month: integer
bedrooms: integer
bathrooms: integer
description: string
pets allowed: boolean

<table>
<thead>
<tr>
<th>Verb</th>
<th>URI Pattern</th>
<th>Controller#Action</th>
</tr>
</thead>
<tbody>
<tr>
<td>POST</td>
<td><code>/sign-up</code></td>
<td><code>users#signup</code></td>
</tr>
<tr>
<td>POST</td>
<td><code>/sign-in</code></td>
<td><code>users#signin</code></td>
</tr>
<tr>
<td>DELETE</td>
<td><code>/sign-out/:id</code></td>
<td><code>users#signout</code></td>
</tr>
<tr>
<td>PATCH</td>
<td><code>/change-password/:id</code></td>
<td><code>users#changepw</code></td>
</tr>
<tr>
<td>GET</td>
<td><code>/apartments</code></td>
<td><code>apartments#index</code></td>
</tr>
<tr>
<td>POST</td>
<td><code>/apartments</code></td>
<td><code>apartments#create</code></td>
</tr>
<tr>
<td>GET</td>
<td><code>/apartments/:id</code></td>
<td><code>apartments#show</code></td>
</tr>
<tr>
<td>PATCH</td>
<td><code>/apartments/:id</code></td>
<td><code>apartments#update</code></td>
</tr>

</tbody></table>
