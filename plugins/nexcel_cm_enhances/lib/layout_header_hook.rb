class LayoutHeaderListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(_context)
    addictionalTags = javascript_include_tag(:layout_enhance, plugin: :nexcel_cm_enhances)
    addictionalTags << stylesheet_link_tag('layout_enhance.css', plugin: :nexcel_cm_enhances, media: 'screen')

    addictionalTags
  end
end
