# Class: rkhunter
class rkhunter
(
  $allowdevfile = $rkhunter::params::allowdevfile,
  $allowhiddendir = $rkhunter::params::allowhiddendir,
  $allowhiddenfile = $rkhunter::params::allowhiddenfile,
  $allowprocdelfile = $rkhunter::params::allowprocdelfile,
  $allowproclisten = $rkhunter::params::allowproclisten,
  $allowpromiscif = $rkhunter::params::allowpromiscif,
  $allow_ssh_prot_v1 = $rkhunter::params::allow_ssh_prot_v1,
  $allow_ssh_root_user = $rkhunter::params::allow_ssh_root_user,
  $allow_syslog_remote_logging = $rkhunter::params::allow_syslog_remote_logging,
  $append_log = $rkhunter::params::append_log,
  $app_whitelist = $rkhunter::params::app_whitelist,
  $apt_autogen = $rkhunter::params::apt_autogen,
  $attrwhitelist = $rkhunter::params::attrwhitelist,
  $auto_x_detect = $rkhunter::params::auto_x_detect,
  $bindir = $rkhunter::params::bindir,
  $color_set2 = $rkhunter::params::color_set2,
  $config = $rkhunter::params::config,
  $configTemplate = $rkhunter::params::configTemplate,
  $configDefault = $rkhunter::params::configDefault,
  $configDefaultTemplate = $rkhunter::params::configDefaultTemplate,
  $copy_log_on_error = $rkhunter::params::copy_log_on_error,
  $cron_daily_run = $rkhunter::params::cron_daily_run,
  $cron_db_update = $rkhunter::params::cron_db_update,
  $cron_weekly_run = $rkhunter::params::cron_weekly_run,
  $dbdir = $rkhunter::params::dbdir,
  $db_update_email = $rkhunter::params::db_update_email,
  $diag_scan = $rkhunter::params::diag_scan,
  $disable_tests = $rkhunter::params::disable_tests,
  $empty_logfiles = $rkhunter::params::empty_logfiles,
  $enable_tests = $rkhunter::params::enable_tests,
  $epoch_date_cmd = $rkhunter::params::epoch_date_cmd,
  $exclude_user_fileprop_files_dirs = $rkhunter::params::exclude_user_fileprop_files_dirs,
  $existwhitelist = $rkhunter::params::existwhitelist,
  $hash_cmd = $rkhunter::params::hash_cmd,
  $hash_fld_idx = $rkhunter::params::hash_fld_idx,
  $ignore_prelink_dep_err = $rkhunter::params::ignore_prelink_dep_err,
  $immutable_set = $rkhunter::params::immutable_set,
  $immutwhitelist = $rkhunter::params::immutwhitelist,
  $inetd_allowed_svc = $rkhunter::params::inetd_allowed_svc,
  $inetd_conf_path = $rkhunter::params::inetd_conf_path,
  $installdir = $rkhunter::params::installdir,
  $language = $rkhunter::params::language,
  $lock_timeout = $rkhunter::params::lock_timeout,
  $logfile = $rkhunter::params::logfile,
  $mail_cmd = $rkhunter::params::mail_cmd,
  $mail_on_warning = $rkhunter::params::mail_on_warning,
  $mirrors_mode = $rkhunter::params::mirrors_mode,
  $missing_logfiles = $rkhunter::params::missing_logfiles,
  $modules_dir = $rkhunter::params::modules_dir,
  $nice = $rkhunter::params::nice,
  $os_version_file = $rkhunter::params::os_version_file,
  $password_file = $rkhunter::params::password_file,
  $phalanx2_dirtest = $rkhunter::params::phalanx2_dirtest,
  $pkgmgr = $rkhunter::params::pkgmgr,
  $pkgmgr_no_vrfy = $rkhunter::params::pkgmgr_no_vrfy,
  $port_path_whitelist = $rkhunter::params::port_path_whitelist,
  $port_whitelist = $rkhunter::params::port_whitelist,
  $pwdless_accounts = $rkhunter::params::pwdless_accounts,
  $readlink_cmd = $rkhunter::params::readlink_cmd,
  $rotate_mirrors = $rkhunter::params::rotate_mirrors,
  $rtkt_dir_whitelist = $rkhunter::params::rtkt_dir_whitelist,
  $rtkt_file_whitelist = $rkhunter::params::rtkt_file_whitelist,
  $run_check_on_battery = $rkhunter::params::run_check_on_battery,
  $scan_mode_dev = $rkhunter::params::scan_mode_dev,
  $scanrootkitmode = $rkhunter::params::scanrootkitmode,
  $scriptdir = $rkhunter::params::scriptdir,
  $scriptwhitelist = $rkhunter::params::scriptwhitelist,
  $shared_lib_whitelist = $rkhunter::params::shared_lib_whitelist,
  $show_lock_msgs = $rkhunter::params::show_lock_msgs,
  $show_summary_time = $rkhunter::params::show_summary_time,
  $show_summary_warnings_number = $rkhunter::params::show_summary_warnings_number,
  $ssh_config_dir = $rkhunter::params::ssh_config_dir,
  $startup_paths = $rkhunter::params::startup_paths,
  $stat_cmd = $rkhunter::params::stat_cmd,
  $suspscan_dirs = $rkhunter::params::suspscan_dirs,
  $suspscan_maxsize = $rkhunter::params::suspscan_maxsize,
  $suspscan_temp = $rkhunter::params::suspscan_temp,
  $suspscan_thresh = $rkhunter::params::suspscan_thresh,
  $syslog_config_file = $rkhunter::params::syslog_config_file,
  $tmpdir = $rkhunter::params::tmpdir,
  $uid0_accounts = $rkhunter::params::uid0_accounts,
  $unhidetcp_opts = $rkhunter::params::unhidetcp_opts,
  $unhide_tests = $rkhunter::params::unhide_tests,
  $update_lang = $rkhunter::params::update_lang,
  $update_mirrors = $rkhunter::params::update_mirrors,
  $updt_on_os_change = $rkhunter::params::updt_on_os_change,
  $use_locking = $rkhunter::params::use_locking,
  $user_fileprop_files_dirs = $rkhunter::params::user_fileprop_files_dirs,
  $use_sunsum = $rkhunter::params::use_sunsum,
  $use_syslog = $rkhunter::params::use_syslog,
  $warn_on_os_change = $rkhunter::params::warn_on_os_change,
  $web_cmd = $rkhunter::params::web_cmd,
  $whitelisted_is_white = $rkhunter::params::whitelisted_is_white,
  $writewhitelist = $rkhunter::params::writewhitelist,
  $xinetd_allowed_svc = $rkhunter::params::xinetd_allowed_svc,
  $xinetd_conf_path = $rkhunter::params::xinetd_conf_path
)
inherits rkhunter::params
{
  include rkhunter::package
  include rkhunter::params
  include rkhunter::config
  include rkhunter::exec
  include rkhunter::cron

  anchor { 'rkhunter::begin': }
  anchor { 'rkhunter::end': }

  Anchor['rkhunter::begin']->
  Class['::rkhunter::package']->
  Class['::rkhunter::params']->
  Class['::rkhunter::config']~>
  Class['::rkhunter::exec']~>
  Class['::rkhunter::cron']->
  Anchor['rkhunter::end']
}
