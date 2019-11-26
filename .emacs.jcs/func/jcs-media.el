;;; jcs-media.el --- Process media, like audio/video.  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'ffmpeg-player)


(defun jcs-media--open-media-window ()
  "Open the media window."
  (when ffmpeg-player--buffer
    (when (window-full-height-p) (jcs-balance-split-window-vertically))
    (windmove-up)
    (switch-to-buffer ffmpeg-player--buffer)))

(defun jcs-media--close-media-window ()
  "Close the media window."
  (when (ignore-errors (jcs-jump-shown-to-buffer "*ffmpeg-player*: "))
    (jcs-maybe-kill-this-buffer)
    (jcs-delete-window-downwind)))


(provide 'jcs-media)
;;; jcs-media.el ends here
