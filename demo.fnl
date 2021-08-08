(print :hello-my-name-also-oliver) ;; select this line and run :Fnl
(print package.loaded.fennel) ;; select this line and run :Fnl, => nil

(with-open [works (io.open :test :w)] ;; select and :Fnl
            (works:write "this works"))

(print :people-also-call-me-ollie) ;; ,ee in this expression
(print package.loaded.fennel) ;; select this line and run :Fnl, => table 0x ...
(print package.loaded.fennel.traceback) ;; => nil
(print (vim.inspect (package.loaded.fennel))) ;; => aniseed stuff

;; now package.loaded.fennel != nil, so this now crashes when it attempts to
;; reference package.loaded.fennel.traceback (which *is* nil)

(with-open [broken (io.open :test2 :w)] ;; select and :Fnl or ee
            (broken:write "this fails"))

;; select and :Fnl this to see the code that breaks (the xpcall)
(tset package.loaded :fennel nil)
(print ((. (require :hotpot.api.compile) :compile-string)
  "(with-open [broken (io.open :test2 :w)] ;; select and :Fnl or ee
            (broken:write :this-fails))"))
