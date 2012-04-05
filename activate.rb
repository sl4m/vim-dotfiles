#!/usr/bin/env ruby

require 'fileutils'

working_dir = File.expand_path(File.dirname(__FILE__))
home_dir = File.expand_path("~")
dot_files = [File.join(working_dir, "vim"), File.join(working_dir, "vimrc")]

dot_files.each do |filename|
  sym_link = File.join(home_dir, ".#{File.basename(filename)}")

  FileUtils.rm sym_link if File.symlink?(sym_link) || File.exist?(sym_link)
  FileUtils.ln_s filename, sym_link
end

color_dir = File.join(working_dir, "vim", "colors")
color_files = Dir.glob(File.join(color_dir, "colors", "*"))

color_files.each do |filename|
  sym_link = File.join(color_dir, File.basename(filename))

  FileUtils.rm sym_link if File.symlink?(sym_link) || File.exist?(sym_link)
  FileUtils.ln_s filename, sym_link
end
