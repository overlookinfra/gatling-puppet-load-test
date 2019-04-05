{
  :type                        => 'foss',
  :pre_suite                   => [
    'setup/install_gatling/00_pre_install/05_initialize_helpers.rb',
    'setup/install_gatling/00_pre_install/20_rpm_setup.rb',
    'setup/install_gatling/00_pre_install/30_r10k_git_setup.rb',
    'setup/install_gatling/20_foss_install/10_install_dev_repos.rb',
    'setup/install_gatling/30_classification/10_r10k_deploy.rb',
    'setup/install_gatling/30_classification/50_classify_nodes_via_site_pp.rb',
    'setup/install_gatling/40_post_install/30_final_puppet_run.rb',
    'setup/install_gatling/40_post_install/40_configure_gatling_auth.rb',
    'setup/install_gatling/40_post_install/50_configure_permissive_server_auth.rb',
    'setup/install_gatling/40_post_install/60_restart_server.rb',
    'setup/install_gatling/40_post_install/70_disable_firewall.rb',
    'setup/install_gatling/40_post_install/80_install_deps.rb',
    'setup/install_gatling/40_post_install/99_setup_gatling_proxy.rb',
  ],
  'is_puppetserver'            => true,
  'use-service'                => true, # use service scripts to start/stop stuff
  'puppetservice'              => 'puppetserver',
  'puppetserver-confdir'       => '/etc/puppetlabs/puppetserver/conf.d',
  'puppetserver-config'        => '/etc/puppetlabs/puppetserver/conf.d/puppetserver.conf'
}.merge(eval File.read('setup/options/options_common.rb'))
