# config/initializers/paperclip.rb
if Rails.env.production?
  Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
  Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
end

Paperclip.options[:content_type_mappings] = {
  :jpg => "image/jpeg",
  :png => "image/png",
  :gif => "image/gif"
}
