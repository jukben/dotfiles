function fish_prompt
    echo -sn (set_color -o)

    if git_is_repo 
        # show path relative to the git root
        echo -sn (pwd) | string replace (git_repository_root) (basename (git_repository_root)) | tr -d \n
    else
        # show shortened pwd
        echo -sn (prompt_pwd)
    end

    # make space after current dir
    echo -sn  " "


    if set -l branch_name (git_branch_name)
        set -l branch_status
        set -l stashed ""

        if git_is_dirty
            set branch_status (set_color -o red)"✗"
        else if git_is_staged
            set branch_status (set_color -o yellow)"✓"
        else
            set branch_status (set_color -o green)"✓"
        end

        if git_is_stashed 
            set stashed "^" 
        end

        echo -sn (set_color normal) "$branch_name$stashed" " $branch_status " (set_color normal)
    end
end
