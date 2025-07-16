set -gx PNPM_HOME "/home/$USER/.local/share/pnpm"

if not contains $PNPM_HOME $PATH
    set -gx PATH $PNPM_HOME $PATH
end


set -g fish_key_bindings fish_vi_key_bindings

function fish_user_key_bindings
    # Keep the ↵ autosuggestion accept in insert mode
    bind -M insert \cy accept-autosuggestion
end

function fish_greeting
    echo Good afternoon, Mr. Fool~\n
end

function fish_prompt
    set -g __fish_git_prompt_showdirtystate 1
    printf '%s%s%s ' (prompt_pwd) (set_color normal) (fish_git_prompt)
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold red
        case insert replace_one
            set_color --bold green
        case visual
            set_color --bold brmagenta
        case '*'
            set_color --bold red
    end
    printf '%s ' $USER
    set_color normal
end
