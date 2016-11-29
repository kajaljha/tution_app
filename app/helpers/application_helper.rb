module ApplicationHelper
  def to_boolean(str)
    str == 'true'
  end

   def get_commenter_name(comment)
    name = User.find(comment.user_id).name
    return name 
  end
end
