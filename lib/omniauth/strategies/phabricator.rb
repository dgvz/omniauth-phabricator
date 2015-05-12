require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Phabricator < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :token_url => "/oauthserver/token/"
      }

      def request_phase
        options[:scope] ||= 'whoami'
        options[:response_type] ||= 'code'
        super
      end

      uid{ raw_info['result']['phid'] }

      info do
        {
          :name => raw_info['result']['realName'],
          :email => raw_info['result']['primaryEmail']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/api/user.whoami?access_token=#{access_token.token}").parsed
      end
    end
  end
end
