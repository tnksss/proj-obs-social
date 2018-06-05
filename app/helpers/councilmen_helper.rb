require 'faker'
module CouncilmenHelper
    def gravatar_for(councilman, tam, css)

        options = { size: tam }
        gravatar_id = Digest::MD5::hexdigest(Faker::Internet.email)
        size = options[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: councilman.name, class: :css)
    end
end
