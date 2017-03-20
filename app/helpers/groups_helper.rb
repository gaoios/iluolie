module GroupsHelper
  def reder_group_description(group)
    simple_format(group.description)
  end
end
