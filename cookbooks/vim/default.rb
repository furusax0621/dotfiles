package 'vim'

home = ENV['HOME']

directory "#{home}/.vim"

template "#{home}/.vim/base.vim" do
    source "templates/base.vim"
end

template "#{home}/.vim/bundle.vim" do
    source "templates/bundle.vim"
end

template "#{home}/.vimrc" do
    source "templates/vimrc"
end
