# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'

Paperclip.options[:content_type_mappings] = {
  :jpg => "image/jpeg",
  :png => "image/png",
  :gif => "image/gif"
}
