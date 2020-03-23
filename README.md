# ob_text.el
Simple org-babel support for tangling raw text blocks from an org file.

## Usage

Load it in your `.emacs` file:

```elisp
(require 'ob-text)
```

To define a text block in your org file, do this:

```
#+begin_src text :tangle filename.txt
File contents
#+end_src
```

## Configuration

If the export filename is not specified in the block, the default file name 
set by the variable `ob-text:default-dest` will be used. This variable 
defaults to `ob-text.txt` in the current directory, but can be overriden 
by setting or ustomizing this variable.

## Author
Tammy Cravit <tammymakesthings@gmail.com>
Version 0.1, 03/23/2020.