I18n.load_path << Dir[File.expand_path('lib/locales') + '/*.yml']
I18n.config.available_locales = :en
I18n.default_locale = :en
