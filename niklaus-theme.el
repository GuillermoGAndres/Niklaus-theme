;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; ---------------------------
;; Niklaus: An dark color theme
;; Author: Guillermo Andres Urbano.
;; https://github.com/GuillermoGAndres/
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme niklaus
  "An cool dark color theme :D")

(let ((niklaus-background      "#000000")
      (niklaus-foreground      "#d6d6d6")
      (niklaus-mid-gray        "#666666")
      (niklaus-black           "#000000")
      (niklaus-white           "#FFFFFF")
      (niklaus-off-white       "#F8F8F0")
      (niklaus-light-gray-blue "#d0dfe6")
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      (niklaus-light-blue     "#A4D1F2")
      (niklaus-comment-white     "#EFFBFF")
      (niklaus-light-yellow    "#FFF8DC")
      (niklaus-light-purple    "#CAB4CC")
      (niklaus-light-green    "#BCEDDE")
      (niklaus-light-orange    "#FFDAB5")
      (niklaus-region-yellow    "#FFFDD5")
      (niklaus-region-letter    "#525252")
      (niklaus-linum-yellow    "#F3EFDE")
      (niklaus-mode-line-black      "#000000")
      (niklaus-mode-line-white      "#EFFBFF")
      )

  (custom-theme-set-faces
   'niklaus

   ;; ----------------- Frame stuff --------------------
   ;; white #F6F3E8,
   ;;`(default ((t (:background ,niklaus-background :foreground ,niklaus-foreground))))
   ;;`(default ((t (:background "#000000" :foreground "#EFFBFF" :weight semibold))))
   ;;`(default ((t (:background "#000000" :foreground "#ffffff" :weight semibold))))
   `(default ((t (:background "#000000" :foreground "#F6F3E8" :weight semibold))))

   `(cursor  ((t (:background ,niklaus-light-blue))))
   ;;Marcado de la linea actual si es que esta activado.
   `(hl-line ((t (:background ,niklaus-mid-gray))))
   ;; Mode-line
                                        ;'(mode-line ((t (:background "#B4B4B4" :foreground "#000000" :box nil))))

   `(modeline ((t (:background "#B4B4B4" :foreground "#000000"))))
   `(mode-line-inactive ((t (:box nil :background ,niklaus-mid-gray :foreground ,niklaus-light-gray-blue))))
   `(mode-line ((t (:box nil :foreground "#000000" :background "#B4B4B4"))))
   ;; Dir-ed search prompt
   ;;`(minibuffer-prompt ((default (:foreground ,niklaus-white))))
   '(minibuffer-prompt ((t (:foreground "#FFDAB5"))))
   ;; Highlight region color
   ;;`(region ((t (:foreground ,niklaus-region-letter :background ,niklaus-region-yellow))))
   ;;`(region ((t (:foreground "#FFFDD5" :background "#525252"))))
   `(region ((t (:foreground "#ffffff" :background "#525252"))))

   `(fringe ((t (:background ,niklaus-black))))

   ;; ---------------- Code Highlighting ---------------
   ;; Builtin
   '(font-lock-builtin-face ((t (:foreground "#A4D1F2")))) ;azul claro
   ;; Comments
   ;;'(font-lock-comment-face ((t (:foreground "#EFFBFF")))) ; Comentarios de en linea blanco
   ;;'(font-lock-comment-face ((t (:foreground "#9FB3C2")))) ; Comentarios de en linea grises
   ;;'(font-lock-comment-face ((t (:foreground "#F28B86")))) ; Comentarios de en linea rojo
                                        ;'(font-lock-comment-face ((t (:foreground "#EB9490")))) ; Comentarios de en linea rojo claro
   '(font-lock-comment-face ((t (:foreground "#EC9F6F")))) ; Comentarios de linea naranja fuerte #EC9F6F o #F6AD80
   '(font-lock-doc-face ((t (:foreground "#EFFBFF")))) ;Docsting blanco
   ;; Function names
   '(font-lock-function-name-face ((t (:foreground "#93CFE3" :weight bold)))) ;Funcion names: azules
   ;; Keywords
   '(font-lock-keyword-face ((t (:foreground "#19F1E8" :weight bold)))) ; keyword;  turquesa #19F1E8
   ;; Strings
   '(font-lock-string-face ((t (:foreground "#F4B3A0" :weight semibold)))) ;Cadenas naranjas
   ;; Variables
   '(font-lock-variable-name-face ((t (:foreground "#E9DCA7" :weight bold)))) ;Color: amarillas #E9DCA7 o amarillo mas fuerte #ECDF9A
   ;; Types
   ;;'(font-lock-type-face ((t (:foreground "#FFDAB5")))) ; Clases y types:  naranjas
   '(font-lock-type-face ((t (:foreground "#93E4D0" :weight bold)))) ; Clases y types: verdeagua
   ;; '(font-lock-type-face ((t (:foreground "#FFA8A3" :weight semibold)))) ; Clases y types rojo claro #FFA8A3 o #FFA19B

   ;; Constant
   '(font-lock-constant-face ((t (:foreground "#BEC3D1" :weight semibold)))) ;Contastantes: azulgris #C8CBD5 o lightazul #add8e6, azulgris2 #BEC3D1

                                        ; Highlight linum color
   '(linum ((t (:inherit (shadow default) :background "#000000" :foreground "#F3EFDE"))))

                                        ;Company
   '(company-preview ((t (:background "#373B41" :foreground "wheat"))))
   '(company-preview-common ((t (:inherit company-preview :foreground "wheat"))))
   '(company-tooltip-common ((t (:foreground "#FFFDD5")))) ;Color de las letras en coincidencia en pop
   '(company-tooltip-selection ((t (:background "#7B7B7B")))) ;Color de seleccion resaltado.
   '(company-tooltip ((t (:background "#000000" :foreground "#C5C8C6")))) ;Color fondo y letra
   '(company-scrollbar-bg ((t (:background "#282A2E")))) ;Color de scrollbar
   '(company-scrollbar-fg ((t (:background "#373B41"))))
   '(company-tooltip-annotation ((t (:foreground "#F0DFAF"))))

                                        ;Helm
   '(helm-source-header ((t (:extend t :foreground "#F0DFAF" :weight bold))))
   '(helm-match ((t (:extend t :foreground "#FFFDD5"))))
   '(helm-selection ((t (:extend t :background "gray37" :distant-foreground "black"))))

   '(helm-ff-directory ((t (:extend t :foreground "#F0DFAF"))))
   '(helm-ff-dotted-directory ((t (:extend t :foreground "#d6d6d6"))))

                                        ;Tabs
   '(tab-bar ((t (:inherit variable-pitch :background "#000000" :foreground "#93E4D0"))))
   '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "#000000" :foreground "#F6F3E8"))))

   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,niklaus-off-white :foreground ,niklaus-background))))

   ;;--------------------Web mode --------------------

   '(web-mode-doctype-face ((t (:foreground "#19F1E8" :weight bold)))) ;turquoise #40e0d0 otro turquoise #00f5ff o #00e5ee, lightblue #add8e6, PaleTurquoise #afeeee
   '(web-mode-html-tag-face ((t (:foreground "#93CFE3" :weight bold)))); azules
   ;; ;;'(web-mode-html-tag-face ((t (:foreground "#EFFBFF"))));Color de los brackets
   '(web-mode-html-attr-name-face ((t (:foreground "#E9DCA7" :weight bold)))) ;amarillas
   '(web-mode-html-attr-value-face ((t (:foreground "#F4B3A0" :weight bold)))) ;naranjas
   '(web-mode-comment-face ((t (:foreground "#EFFBFF" :weight bold)))) ;; Color blanco

   ;;----------------- Diredfl -----------------------------
   '(diredfl-date-time ((t (:foreground "#b8c4d7"))))
   '(diredfl-dir-heading ((t (:foreground "#ceeca4"))))
   '(diredfl-dir-name ((t (:foreground "#F0DFAF"))))
   '(diredfl-dir-priv ((t (:foreground "#96e7e5"))))
   '(diredfl-exec-priv ((t (:foreground "#D1907F"))))
   '(diredfl-file-name ((t nil)))
   '(diredfl-file-suffix ((t (:inherit diredfl-file-name))))
   '(diredfl-no-priv ((t nil)))
   '(diredfl-number ((t (:foreground "#F0DFAF"))))
   '(diredfl-read-priv ((t (:foreground "#ceeca4"))))
   '(diredfl-symlink ((t (:foreground "#96e7e5"))))
   '(diredfl-write-priv ((t (:foreground "#F0DFAF"))))

   )

  )



;;;###Autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'niklaus)

;; Local Variables:
;; no-byte-compile: t
;; End:
