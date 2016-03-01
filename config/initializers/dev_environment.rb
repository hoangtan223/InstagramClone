unless Rails.env.production?
  ENV['AWS_ACCESS_KEY_ID'] = 'AKIAJQ7FRDMAP4Q5W5WA'
  ENV['AWS_SECRET_ACCESS_KEY'] = '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'
  ENV['S3_REGION'] = 'ap-southeast-1'
end