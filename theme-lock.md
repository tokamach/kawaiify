# How to use theme.lock
I thought I'd put some examples here of using the `theme.lock` file. I use it for my fish prompt and emacs theme.

## Emacs
In my `init.el` I have this snippet:
```
; update based on kawaiify theme
(require 'cl)
(require 'filenotify)

(defun get-string-from-file (filePath)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))
	
(defun theme-update-callback (event)
  (pcase (get-string-from-file "~/.kawaiify/theme.lock")
    ("pink\n" (load-theme 'pink-bliss t))
    ("tol\n"  (load-theme 'birds-of-paradise-plus t))
    ("dark\n" (load-theme 'zenburn t))
    (_ (load-theme 'creamsody t)))) ;blue

(file-notify-add-watch
 "~/.kawaiify/theme.lock"
 '(change attribute-change)
 'theme-update-callback)
 ```
 
It sets a file change watch up, which will run a function to determine which theme to use. 

## Fish
For my fish config I have the `set_color_custom` function set. Every time the prompt is redrawn it is called. It's not exactly optimized but I haven't really noticed a slowdown.

```
function set_color_custom
    if test $cur_theme = "pink"
        set -U fish_color_normal                normal
        set -U fish_color_command               FCB4CE
        set -U fish_color_param                 -o C9424F
        set -U fish_color_redirection           fff
        set -U fish_color_comment               black
        set -U fish_color_error                 red
        set -U fish_color_escape                red
        set -U fish_color_operator              red
        set -U fish_color_end                   fff
        set -U fish_color_quote                 -o yellow
        set -U fish_color_autosuggestion        555
        set -U fish_color_valid_path            --underline
        set -U fish_color_cwd                   fff
        set -U fish_color_cwd_root              fff
        set -U fish_color_match                 fff
        set -U fish_color_search_match          --background=cyan
        set -U fish_color_selection             --background=cyan
        set -U fish_pager_color_prefix          black 
        set -U fish_pager_color_completion      black  -o
        set -U fish_pager_color_description     black 
        set -U fish_pager_color_progress        black 
        set -U fish_color_history_current       black 
    else
        set -U fish_color_normal                normal
        set -U fish_color_command               cyan
        set -U fish_color_param                 -o white
        set -U fish_color_redirection           fff
        set -U fish_color_comment               black
        set -U fish_color_error                 red
        set -U fish_color_escape                red
        set -U fish_color_operator              red
        set -U fish_color_end                   fff
        set -U fish_color_quote                 -o white
        set -U fish_color_autosuggestion        555
        set -U fish_color_valid_path            --underline
        set -U fish_color_cwd                   fff
        set -U fish_color_cwd_root              fff
        set -U fish_color_match                 fff
        set -U fish_color_search_match          --background=cyan
        set -U fish_color_selection             --background=cyan
        set -U fish_pager_color_prefix          white
        set -U fish_pager_color_completion      white -o
        set -U fish_pager_color_description     white
        set -U fish_pager_color_progress        white
        set -U fish_color_history_current       white
    end
end
```
