(define (script-fu-sticker-template image layer)

  (define width (car (gimp-image-width image)))
  (define height (car (gimp-image-height image)))
  (define new-height (/ (* height 4200) width))

  (gimp-image-scale image 4200 new-height)
  (gimp-image-resize image 4200 3300 0 (/ (- 3300 new-height) 2))
  (gimp-displays-flush)
)

  (script-fu-register
    "script-fu-sticker-template"                   ;func name
    "Create Sticker Template"                      ;menu label
    "Automate sticker tasks"                       ;description
    "TranslatorWS"                                 ;author
    "copyright 2022"                               ;copyright notice
    "May 7, 2022"                                  ;date created
    ""                     ;image type that the script works on
    SF-IMAGE "Image" 0
    SF-DRAWABLE "Layer" 0
  )
  (script-fu-menu-register "script-fu-sticker-template" "<Image>/Filters")