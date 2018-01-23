setl tabstop=2
setl shiftwidth=2
setl softtabstop=0
setl noexpandtab
setl matchpairs+=<:>
syntax match boost_pp /BOOST_PP_[A-z0-9_]*/
highlight link boost_pp cppStatment
