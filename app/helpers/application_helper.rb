module ApplicationHelper
  def relative_root_url
    ActionController::Base.respond_to?('relative_url_root') ?
        ActionController::Base.relative_url_root.to_s :
        ActionController::Base.config.relative_url_root.to_s
  end
end
