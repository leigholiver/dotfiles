# based on the ubuntu-single-line theme
override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="leigh"

  GIT_PROMPT_PREFIX="[ "
  GIT_PROMPT_SUFFIX=" ]"
  GIT_PROMPT_SEPARATOR=" |"
  GIT_PROMPT_STAGED=" ${Red}● ${ResetColor}"
  GIT_PROMPT_CONFLICTS=" ${Red}✖ ${ResetColor}"
  GIT_PROMPT_CHANGED=" ${Blue}✚ ${ResetColor}"
  GIT_PROMPT_UNTRACKED=" ${Cyan}…${ResetColor}"
  GIT_PROMPT_STASHED=" ${BoldBlue}⚑ ${ResetColor}"
  GIT_PROMPT_CLEAN=" ${BoldGreen}✔ ${ResetColor}"

  GIT_PROMPT_COMMAND_OK="${Green}✔ "
  GIT_PROMPT_COMMAND_FAIL="${Red}✘ "

  GIT_PROMPT_START_USER="\n_LAST_COMMAND_INDICATOR_ ${White}${Time12a}${ResetColor}"
  #GIT_PROMPT_END_USER="${ResetColor}\n$ "
  GIT_PROMPT_END_ROOT="\n${BoldRed}\\h${ResetColor}: # "
  GIT_PROMPT_END_USER=" ${Cyan}${PathShort}${ResetColor}\n${Cyan}\\u@\\h${ResetColor}: $ "
}

reload_git_prompt_colors "leigh"
