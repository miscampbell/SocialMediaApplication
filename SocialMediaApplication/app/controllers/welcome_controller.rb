class WelcomeController < ApplicationController
  def index
    @socialMediaProviders = SocialMediaProvider.all
  end

  def test_addProvider
    SocialMediaProvider.create(:name => 'Twitter', :base_url => 'http://www.twitter.com', :oauth_token => '12456789');
    redirect_to(welcome_index_path)
  end

end
