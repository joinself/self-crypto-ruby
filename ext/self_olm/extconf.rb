require 'mkmf'

pkg_config('olm')
pkg_config("sodium")

abort "Missing sodium" unless have_library("sodium")
abort "Missing olm, or olm too old (need at least 3.1.0)" unless have_library("olm")

create_makefile('self_olm/self_olm')
