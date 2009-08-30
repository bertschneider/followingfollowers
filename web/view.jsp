<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>FollowingFollowers</title>
  </head>
  <body>
    <h1>FollowingFollowers</h1>
    <div>
        <p>User <%= request.getAttribute("username") %> has <%= request.getAttribute("friendsSize") %> friends.</p>
        <p>
            <%= request.getAttribute("followingFriends") %> followed users are also following your account.<br>
            That makes a total of <span id="percent"><%= request.getAttribute("percent") %></span> percent.
        </p>
    </div>
  </body>
</html>
