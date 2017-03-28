Redmine::Plugin.register :kpi do
  name 'Kpi plugin'
  author 'SnuggleE'
  description 'This is a plugin about kpi calculation for Redmine'
  version '0.1.0'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :top_menu , :kpi, { :controller => 'indicators', :action => 'index' }, :caption => 'KPI', :last=>true
  project_module :kpi do
    permission :view_indicators, :indicators => :index
  end
  settings :partial => 'settings/kpi_settings',
           :default => {
               "user_superior_id_field" => "parent_id",
               "executor_id_issue_field" => "executor_id",
               "max_kpi" => 120,
               "min_kpi" => 80,
               "check_date_issue_field" => "check_date",
               "auto_activating_date" => 2,
               "user_tree_table_name" => "user_trees",
               "initial_user_id" => 80,
           }
end

require_dependency 'KPI_hook_listener'