Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'TB4LviZjYYnzFFHWAngAw', 'vjKboh9viHtTTvFMQHuid5CgRRKOCok6yUwSy5dzr4'
  provider :instagram, '88eae3d4042c4c14b8782963e21f18ab','53c5f1b8c9fa44de9d7c24ab38b7e7e2'
  provider :facebook, '182070088607343', '262c3c9ccaface0984dc9a83bb489fc5',
           :scope => 'email,user_birthday', :display => 'popup'
end


