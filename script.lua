local GIT_DIFF_FILENAMES <const> = 'git diff --name-only'
local PHP_FIXER <const> = 'php ./bin/php-cs-fixer fix --allow-risky=yes'    

function fix_changed_files(files, command)
    local output = io.popen(files):read("*a")

    for line in output:gmatch"[^\n]+" do
        os.execute(command .. ' ' .. line)
    end
end

-- get changed files in dir this command is run and then run php-cs-fixer on them
fix_changed_files(GIT_DIFF_FILENAMES, PHP_FIXER)