#!/usr/bin/env ruby
require "json"
require "find"
require "time"

OUT_DIR = ENV["OUT_DIR"] || "_site"
OTHER_DOC_EXTS = %w[.doc .docx .xls .xlsx .ppt .pptx .csv]

COUNTS = { html: 0, pdf: 0, other_docs: 0, all_files: 0 }
FILES = []

unless Dir.exist?(OUT_DIR)
  warn "Output directory '#{OUT_DIR}' not found."
  exit 2
end

Find.find(OUT_DIR) do |path|
  next unless File.file?(path)
  ext = File.extname(path).downcase

  COUNTS[:all_files] += 1
  case ext
  when ".html" then COUNTS[:html] += 1
  when ".pdf"  then COUNTS[:pdf] += 1
  when *OTHER_DOC_EXTS then COUNTS[:other_docs] += 1
  end

  FILES << path
end

result = {
  output_dir: OUT_DIR,
  counts: COUNTS,
  timestamp: Time.now.utc.iso8601
}

puts JSON.pretty_generate(result)

if ENV["WRITE_INVENTORY"] == "1"
  File.write("page-inventory.json", JSON.pretty_generate({ files: FILES.sort }))
end
