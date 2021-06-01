require 'hexlet_code/version'
require 'hexlet_code/tag'
require 'hexlet_code/form'

module HexletCode
  class Error < StandardError; end
  extend Form
end
