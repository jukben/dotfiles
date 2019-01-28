function stfu -d "stfu <volume>"
    set command "osascript -e \"set volume output volume"
    if test $argv[1]
        # silent volume passed from argument
        eval "echo '$command $argv[1]\"' | sh 2> /dev/null "
    else
        # if we didn't run this command with argument, let's silent the volume entirely
        eval "echo '$command 0\"' | sh 2> /dev/null"
    end

    # Report success
    if test $status -eq 0
        echo (set_color green)"OK"
    else
        echo (set_color red)"Something went wrong. Argument should be a number."
    end
end
