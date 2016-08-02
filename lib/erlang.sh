# -*- mode: bash; tab-width: 2; -*-
# vim: ts=2 sw=2 ft=bash noet

# source nodejs
. ${engine_lib_dir}/nodejs.sh

runtime() {
	echo $(nos_validate "$(nos_payload 'config_runtime')" "string" "erlang-18")
}

install_runtime() {
  pkgs=($(runtime))

  if [[ "$(is_nodejs_required)" = "true" ]]; then
    pkgs+=("$(nodejs_dependencies)")
  fi
	nos_install ${pkgs[@]}
}

# Uninstall build dependencies
uninstall_build_packages() {
  # currently ruby doesn't install any build-only deps... I think
  pkgs=()

  # if nodejs is required, let's fetch any node build deps
  if [[ "$(is_nodejs_required)" = "true" ]]; then
    pkgs+=("$(nodejs_build_dependencies)")
  fi

  # if pkgs isn't empty, let's uninstall what we don't need
  if [[ ${#pkgs[@]} -gt 0 ]]; then
    nos_uninstall ${pkgs[@]}
  fi
}

make_target() {
	echo $(nos_validate "$(nos_payload 'config_make_target')" "string" "")
}

compile() {
	if [[ -f $(nos_code_dir)/Makefile ]]; then
		(cd $(nos_code_dir); nos_run_process "make $(make_target)" "make $(make_target)")
	fi
}

project_dir() {
	echo $(nos_validate "$(nos_payload 'config_project_dir')" "string" "")
}

# Copy the compiled jars into the app directory to run live
publish_release() {
	nos_print_bullet "Moving build into live code directory..."
	if [[ ! -z "$(project_dir)" ]]; then
		mkdir -p $(nos_app_dir)/$(project_dir)
		rsync -a $(nos_code_dir)/ $(nos_app_dir)/$(project_dir)
	else
		rsync -a $(nos_code_dir)/ $(nos_app_dir)
	fi
}