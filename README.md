# Git Diff Fixer for PHP 

A quick Lua script that fixes the style of all PHP files that show as changed in git based on the PHP Coding Standards.

This is done by grabbing the names of all files in the git difference and then running the [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
on each file. 
