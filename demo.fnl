(print :hello-my-name-also-oliver) ;; select this line and run :Fnl
(print package.loaded.fennel) ;; select this line and run :Fnl, => nil

(print :people-also-call-me-ollie) ;; ,ee in this expression
(print package.loaded.fennel) ;; select this line and run :Fnl, => table 0x ...
(print package.loaded.fennel.traceback) ;; => nil
