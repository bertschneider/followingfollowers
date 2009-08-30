package de.herrnorbert.followingfollowers

import javax.servlet.http.{HttpServletResponse, HttpServletRequest, HttpServlet}
import org.talkingpuffin.twitter.{TwitterUser, TwitterSession}


class FollowingFollowers extends HttpServlet {

  override def doPost(req: HttpServletRequest, resp: HttpServletResponse) = {
    val username = req.getParameter("name")
    val password = req.getParameter("password")

    val session = TwitterSession(username, password)
    val user: TwitterUser = session.getUserDetail
    val friends: List[TwitterUser] = session.getFriends

    val followingFriends = friends.foldLeft[Int](0)((counter, friend) => {
      if (session.getFriendshipExists(friend.screenName, user.screenName))
        counter + 1 
      else
        counter
    })

    req.setAttribute("username", user.screenName)
    req.setAttribute("friendsSize", friends.size)
    req.setAttribute("followingFriends", followingFriends)
    req.setAttribute("percent", user.friendsCount / 100.0 * followingFriends)

    this.getServletContext.getRequestDispatcher("/view.jsp").forward(req, resp)
  }
}
