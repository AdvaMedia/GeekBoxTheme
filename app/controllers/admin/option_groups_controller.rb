class Admin::OptionGroupsController < Admin::BaseController
  resource_controller
  update.before do
    params[:option_group][:property_ids] ||= []
    params[:option_group][:option_type_ids] ||= []
  end
  
  update.wants.html { redirect_to collection_url }
  create.wants.html { redirect_to collection_url }
  destroy.success.wants.js { render_js_for_destroy }
end