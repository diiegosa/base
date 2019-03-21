module MenuHelper

  def make_menu
    default_icon = 'fa fa-chevron-circle-right'
    [
      { model: 'Usuários', icon: 'fa fa-users', children:
        [
          {model: 'User', action: :index, path: 'users', icon: default_icon, children: []},
          {model: 'Profile', action: :index, path: 'profiles', icon: default_icon, children: []}
        ]
      },
    ]
  end

end
