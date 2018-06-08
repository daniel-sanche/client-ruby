=begin
#Grafeas API

#An API to insert and retrieve annotations on cloud artifacts.

OpenAPI spec version: v1alpha1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Grafeas
  class GrafeasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new `Note`.
    # @param parent 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ApiNote]
    def create_note(parent, body, opts = {})
      data, _status_code, _headers = create_note_with_http_info(parent, body, opts)
      data
    end

    # Creates a new &#x60;Note&#x60;.
    # @param parent 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiNote, Fixnum, Hash)>] ApiNote data, response status code and response headers
    def create_note_with_http_info(parent, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.create_note ...'
      end
      # verify the required parameter 'parent' is set
      if @api_client.config.client_side_validation && parent.nil?
        fail ArgumentError, "Missing the required parameter 'parent' when calling GrafeasApi.create_note"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GrafeasApi.create_note"
      end
      # resource path
      local_var_path = '/v1alpha1/{parent}/notes'.sub('{' + 'parent' + '}', parent.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#create_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new `Occurrence`. Use this method to create `Occurrences` for a resource.
    # @param parent 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ApiOccurrence]
    def create_occurrence(parent, body, opts = {})
      data, _status_code, _headers = create_occurrence_with_http_info(parent, body, opts)
      data
    end

    # Creates a new &#x60;Occurrence&#x60;. Use this method to create &#x60;Occurrences&#x60; for a resource.
    # @param parent 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiOccurrence, Fixnum, Hash)>] ApiOccurrence data, response status code and response headers
    def create_occurrence_with_http_info(parent, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.create_occurrence ...'
      end
      # verify the required parameter 'parent' is set
      if @api_client.config.client_side_validation && parent.nil?
        fail ArgumentError, "Missing the required parameter 'parent' when calling GrafeasApi.create_occurrence"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GrafeasApi.create_occurrence"
      end
      # resource path
      local_var_path = '/v1alpha1/{parent}/occurrences'.sub('{' + 'parent' + '}', parent.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiOccurrence')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#create_occurrence\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates a new `Operation`.
    # @param parent 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [LongrunningOperation]
    def create_operation(parent, body, opts = {})
      data, _status_code, _headers = create_operation_with_http_info(parent, body, opts)
      data
    end

    # Creates a new &#x60;Operation&#x60;.
    # @param parent 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LongrunningOperation, Fixnum, Hash)>] LongrunningOperation data, response status code and response headers
    def create_operation_with_http_info(parent, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.create_operation ...'
      end
      # verify the required parameter 'parent' is set
      if @api_client.config.client_side_validation && parent.nil?
        fail ArgumentError, "Missing the required parameter 'parent' when calling GrafeasApi.create_operation"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GrafeasApi.create_operation"
      end
      # resource path
      local_var_path = '/v1alpha1/{parent}/operations'.sub('{' + 'parent' + '}', parent.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LongrunningOperation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#create_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the `Note` attached to the given `Occurrence`.
    # @param name 
    # @param [Hash] opts the optional parameters
    # @return [ApiNote]
    def get_occurrence_note(name, opts = {})
      data, _status_code, _headers = get_occurrence_note_with_http_info(name, opts)
      data
    end

    # Gets the &#x60;Note&#x60; attached to the given &#x60;Occurrence&#x60;.
    # @param name 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiNote, Fixnum, Hash)>] ApiNote data, response status code and response headers
    def get_occurrence_note_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.get_occurrence_note ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GrafeasApi.get_occurrence_note"
      end
      # resource path
      local_var_path = '/v1alpha1/{name}/notes'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#get_occurrence_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists `Occurrences` referencing the specified `Note`. Use this method to get all occurrences referencing your `Note` across all your customer projects.
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression.
    # @option opts [Integer] :page_size Number of notes to return in the list.
    # @option opts [String] :page_token Token to provide to skip to a particular spot in the list.
    # @return [ApiListNoteOccurrencesResponse]
    def list_note_occurrences(name, opts = {})
      data, _status_code, _headers = list_note_occurrences_with_http_info(name, opts)
      data
    end

    # Lists &#x60;Occurrences&#x60; referencing the specified &#x60;Note&#x60;. Use this method to get all occurrences referencing your &#x60;Note&#x60; across all your customer projects.
    # @param name 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression.
    # @option opts [Integer] :page_size Number of notes to return in the list.
    # @option opts [String] :page_token Token to provide to skip to a particular spot in the list.
    # @return [Array<(ApiListNoteOccurrencesResponse, Fixnum, Hash)>] ApiListNoteOccurrencesResponse data, response status code and response headers
    def list_note_occurrences_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.list_note_occurrences ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GrafeasApi.list_note_occurrences"
      end
      # resource path
      local_var_path = '/v1alpha1/{name}/occurrences'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiListNoteOccurrencesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#list_note_occurrences\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all `Notes` for a given project.
    # @param parent 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression.
    # @option opts [Integer] :page_size Number of notes to return in the list.
    # @option opts [String] :page_token Token to provide to skip to a particular spot in the list.
    # @return [ApiListNotesResponse]
    def list_notes(parent, opts = {})
      data, _status_code, _headers = list_notes_with_http_info(parent, opts)
      data
    end

    # Lists all &#x60;Notes&#x60; for a given project.
    # @param parent 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression.
    # @option opts [Integer] :page_size Number of notes to return in the list.
    # @option opts [String] :page_token Token to provide to skip to a particular spot in the list.
    # @return [Array<(ApiListNotesResponse, Fixnum, Hash)>] ApiListNotesResponse data, response status code and response headers
    def list_notes_with_http_info(parent, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.list_notes ...'
      end
      # verify the required parameter 'parent' is set
      if @api_client.config.client_side_validation && parent.nil?
        fail ArgumentError, "Missing the required parameter 'parent' when calling GrafeasApi.list_notes"
      end
      # resource path
      local_var_path = '/v1alpha1/{parent}/notes'.sub('{' + 'parent' + '}', parent.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiListNotesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#list_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists active `Occurrences` for a given project matching the filters.
    # @param parent 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression.
    # @option opts [Integer] :page_size Number of occurrences to return in the list.
    # @option opts [String] :page_token Token to provide to skip to a particular spot in the list.
    # @return [ApiListOccurrencesResponse]
    def list_occurrences(parent, opts = {})
      data, _status_code, _headers = list_occurrences_with_http_info(parent, opts)
      data
    end

    # Lists active &#x60;Occurrences&#x60; for a given project matching the filters.
    # @param parent 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter The filter expression.
    # @option opts [Integer] :page_size Number of occurrences to return in the list.
    # @option opts [String] :page_token Token to provide to skip to a particular spot in the list.
    # @return [Array<(ApiListOccurrencesResponse, Fixnum, Hash)>] ApiListOccurrencesResponse data, response status code and response headers
    def list_occurrences_with_http_info(parent, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.list_occurrences ...'
      end
      # verify the required parameter 'parent' is set
      if @api_client.config.client_side_validation && parent.nil?
        fail ArgumentError, "Missing the required parameter 'parent' when calling GrafeasApi.list_occurrences"
      end
      # resource path
      local_var_path = '/v1alpha1/{parent}/occurrences'.sub('{' + 'parent' + '}', parent.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiListOccurrencesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#list_occurrences\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates an existing `Note`.
    # @param name 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ApiNote]
    def update_note(name, body, opts = {})
      data, _status_code, _headers = update_note_with_http_info(name, body, opts)
      data
    end

    # Updates an existing &#x60;Note&#x60;.
    # @param name 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiNote, Fixnum, Hash)>] ApiNote data, response status code and response headers
    def update_note_with_http_info(name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GrafeasApi.update_note ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GrafeasApi.update_note"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling GrafeasApi.update_note"
      end
      # resource path
      local_var_path = '/v1alpha1/{name}'.sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GrafeasApi#update_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end