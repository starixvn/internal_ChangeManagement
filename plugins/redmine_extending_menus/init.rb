Redmine::Plugin.register :redmine_extending_menus do
  name 'Redmine extending menus'
  author 'Jacky Ho'
  description 'Shows a link on the account menu - Change password'
  version '0.1.0'

  menu :account_menu, :ChangePwd, "https://account.owdev.net:8443/password/", :caption => 'Change password', :after => :my_account, :html => {:target => '_blank'}, :if => Proc.new { User.current.logged? }
end