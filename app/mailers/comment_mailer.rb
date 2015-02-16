class CommentMailer < ApplicationMailer
  default from: 'comments@utsoniss.com'

  layout 'mailer'

  def comment_created(current_user, post_user, title)
    @current_user = current_user
    @post_user = post_user
    @title = title

    mail(to: post_user.email,
         subject: 'You have recived a comment!'
        )
  end
end