if status is-interactive
    alias nv "nvim"

    ## ssh-agent (출력 억제)
    if not set -q SSH_AGENT_PID
        begin
            set -l agent_output (ssh-agent -c)
            set -l parsed_output (string split '\n' $agent_output | string replace -r '^setenv (.+) (.+);$' 'set -x $1 $2;')
            for line in $parsed_output
                eval $line
            end
        end >/dev/null 2>&1
    end

    ## Fish 환영 메시지 제거
    function fish_greeting
    end

    ## fastfetch 실행
    fastfetch --logo ~/.config/fastfetch/imgs/gosegu.png --logo-width 45 --logo-type kitty
end
