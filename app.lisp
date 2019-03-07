;;;; app.lisp
;;; ningleをロード (ロード状況を出力しない)
(ql:quickload '(:ningle) :silent t)

;;; ningleのアプリケーションクラスをインスタンス化する
(defparameter *app* (make-instance 'ningle:<app>))

;;; アプリケーションクラスの`/`の戻り値を設定
(setf (ningle:route *app* "/")
      "Hello API!")

;;; clackupするためにアプリケーションインスタンスが返るようにする (後述)
*app*
