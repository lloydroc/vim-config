if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  autocmd! BufNewFile,BufRead,FileReadPost,FilterReadPost *.lux setf lux
augroup END
