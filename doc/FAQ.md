# FAQ

Here is a list of question and answer section. Hopefully this document
would help you figure out something you need to explore this configuration!
Feel free to open and issue or PR to improve this document if you think this 
may help the others too!

*P.S. Notice the answer may not be the only solution. These answer are deeply
depend on my every habit! :smile:*

## Buffers

---

**Q:** How do you open file?

**A:** I open file by hitting `M-f` which starts `counsel` with `ivy`. You are able to navigate the directory by selecting
the directory in minibuffer and hit return to navigate to the one level deeper to the directory tree. And hit `<backspace>`
to navigate one level back from the directory tree. Once you find the file you want to open, just hit return then the file
should open as exptected.

---

**Q:** How do you create file?

**A:** Creating the file is the same as opening the file. In Emacs, if you opened the file that doesn't exists; you can press
`C-s` to save the buffer, then the file will be created.

---

**Q:** How do you save the file?

**A:** Hit `C-s` like other editor. `C-s` will do some magic before saving, like untabify/tabify corresponding to the file type
you are editing. If you would like the save to be just save without doing these operations; press `M-s` instead.

---

**Q:** How do you switch buffer?

**A:** I switch buffer using `C-b` and call out buffer menu. Then I instantly typed out the name of buffer I want to switch to.

---

**Q:** How do you editing the same file with different window?

**A:** I simply press `S-f7` to open the file to the other window.

---

**Q:** How do you editing the corresponding file with different window? Like `.h` and `.c` file, etc.

**A:** I hit `S-f8` to open the corresponding file (if exists) to the other window.

---

## Window & Frame

---

**Q:** How do you switch window?

**A:** I switch window using `M-q` and `M-w`. `M-q` goes left and `M-w` goes right. I don't often work with too many windows,
yet there are a bunch of way to navigate through window from this configuration! Choose one method that best suite you!

---

## Navigation

---

**Q:** How do you navigate through file?

**A:** I use `C-<up>` and `C-<down>` to go to the next/previous blank line. Then use `C-<left>` and `C-<right>` to navigate
between words/symbols.

---

## Search & Replace

---

**Q:** How do you search for word?

**A:** I search word by hitting `C-f` and type out the word I'm looking for for just inside the current file.
If I am searching through the while project I use `C-F` to trigger `isearch-project` which incremental search
through the whole project.

Otherwise, to fastest way to search is to navigate the cursoe to the position on top of the word I want, then call 
`C-,` or `C-.` to trigger incremental search at point. For the whole project, use `C-<` and `C->` instead.

If you don't like incremental search, you can use `counsel` package that uses 3rd party software like `grep`, `ag`, `rg`, etc.
Then the whole of the search result will be place inside ivy minibuffer window!

---