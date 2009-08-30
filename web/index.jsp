<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>FollowingFollowers</title>
  </head>
  <body>
    <h1>FollowingFollowers</h1>
    <p>FollowingFollowers allows you to check whether the people you are following are also following you or if they are not interested in your tweets.</p>

    <form action="/followingfollowers" method="post">
        <label>Twitter Name:</label> <input name="name" type="text"><br>
        <label>Password:</label> <input name="password" type="password"><br>
        <input type="submit">
    </form>

    <p>
        Your Twitter-Account / Password will not be stored!<br/>
        The source code can be found on <a href="http://github.com/Norrit/followingfollowers/">GitHub</a>
    </p>

  </body>
</html>
