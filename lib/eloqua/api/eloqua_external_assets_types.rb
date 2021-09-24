require 'eloqua/api/base'

module Eloqua
  module Api
    class EloquaExternalAssetsTypes < Eloqua::Api::Base
      def fetch_external_assets_types(query_params: {}, search_params: {})
        request_payload = ELOQUA_ENDPOINTS[:external_assets_types].dup
        request_payload[:endpoint] =
          extend_params_to_url(endpoint: request_payload[:endpoint], query_params: query_params,
                               search_params: search_params)
        execute(request_payload)
      end

      def fetch_single_asset_activities(id:)
        request_payload = ELOQUA_ENDPOINTS[:single_asset_activities].dup
        request_payload[:endpoint] = sub_id_in_endpoint(request_payload[:endpoint], id)
        execute(request_payload)
      end
    end
  end
end
