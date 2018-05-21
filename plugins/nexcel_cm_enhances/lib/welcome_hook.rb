class WelcomeHook < Redmine::Hook::ViewListener
    render_on :view_welcome_index_left, :partial => 'welcome/latest_issues'
end