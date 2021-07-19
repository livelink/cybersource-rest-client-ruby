=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsPost201Response
    attr_accessor :_links

    # An unique identification number to identify the submitted request. It is also appended to the endpoint of the resource.  On incremental authorizations, this value with be the same as the identification number returned in the original authorization response.  #### PIN debit Returned for all PIN debit services. 
    attr_accessor :id

    # Time of request in UTC. Format: `YYYY-MM-DDThh:mm:ssZ` **Example** `2016-08-11T22:47:57Z` equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The `T` separates the date and the time. The `Z` indicates UTC.  Returned by authorization service.  #### PIN debit Time when the PIN debit credit, PIN debit purchase or PIN debit reversal was requested.  Returned by PIN debit credit, PIN debit purchase or PIN debit reversal. 
    attr_accessor :submit_time_utc

    # The status of the submitted transaction.  Possible values:  - AUTHORIZED  - PARTIAL_AUTHORIZED  - AUTHORIZED_PENDING_REVIEW  - AUTHORIZED_RISK_DECLINED  - PENDING_AUTHENTICATION  - PENDING_REVIEW  - DECLINED  - INVALID_REQUEST 
    attr_accessor :status

    # Reference number for the transaction. This value is not returned for all processors.  Returned by authorization service.  ##### PIN debit Returned by PIN debit credit, PIN debit purchase, and PIN debit reversal.  #### Atos Positive string (6)  #### All other processors String (60) 
    attr_accessor :reconciliation_id

    attr_accessor :error_information

    attr_accessor :client_reference_information

    attr_accessor :processing_information

    attr_accessor :processor_information

    attr_accessor :issuer_information

    attr_accessor :payment_account_information

    attr_accessor :payment_information

    attr_accessor :order_information

    attr_accessor :point_of_sale_information

    attr_accessor :installment_information

    attr_accessor :token_information

    attr_accessor :risk_information

    attr_accessor :consumer_authentication_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_links' => :'_links',
        :'id' => :'id',
        :'submit_time_utc' => :'submitTimeUtc',
        :'status' => :'status',
        :'reconciliation_id' => :'reconciliationId',
        :'error_information' => :'errorInformation',
        :'client_reference_information' => :'clientReferenceInformation',
        :'processing_information' => :'processingInformation',
        :'processor_information' => :'processorInformation',
        :'issuer_information' => :'issuerInformation',
        :'payment_account_information' => :'paymentAccountInformation',
        :'payment_information' => :'paymentInformation',
        :'order_information' => :'orderInformation',
        :'point_of_sale_information' => :'pointOfSaleInformation',
        :'installment_information' => :'installmentInformation',
        :'token_information' => :'tokenInformation',
        :'risk_information' => :'riskInformation',
        :'consumer_authentication_information' => :'consumerAuthenticationInformation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_links' => :'PtsV2PaymentsPost201ResponseLinks',
        :'id' => :'String',
        :'submit_time_utc' => :'String',
        :'status' => :'String',
        :'reconciliation_id' => :'String',
        :'error_information' => :'PtsV2PaymentsPost201ResponseErrorInformation',
        :'client_reference_information' => :'PtsV2PaymentsPost201ResponseClientReferenceInformation',
        :'processing_information' => :'PtsV2PaymentsPost201ResponseProcessingInformation',
        :'processor_information' => :'PtsV2PaymentsPost201ResponseProcessorInformation',
        :'issuer_information' => :'PtsV2PaymentsPost201ResponseIssuerInformation',
        :'payment_account_information' => :'PtsV2PaymentsPost201ResponsePaymentAccountInformation',
        :'payment_information' => :'PtsV2PaymentsPost201ResponsePaymentInformation',
        :'order_information' => :'PtsV2PaymentsPost201ResponseOrderInformation',
        :'point_of_sale_information' => :'PtsV2PaymentsPost201ResponsePointOfSaleInformation',
        :'installment_information' => :'PtsV2PaymentsPost201ResponseInstallmentInformation',
        :'token_information' => :'PtsV2PaymentsPost201ResponseTokenInformation',
        :'risk_information' => :'PtsV2PaymentsPost201ResponseRiskInformation',
        :'consumer_authentication_information' => :'PtsV2PaymentsPost201ResponseConsumerAuthenticationInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'submitTimeUtc')
        self.submit_time_utc = attributes[:'submitTimeUtc']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'reconciliationId')
        self.reconciliation_id = attributes[:'reconciliationId']
      end

      if attributes.has_key?(:'errorInformation')
        self.error_information = attributes[:'errorInformation']
      end

      if attributes.has_key?(:'clientReferenceInformation')
        self.client_reference_information = attributes[:'clientReferenceInformation']
      end

      if attributes.has_key?(:'processingInformation')
        self.processing_information = attributes[:'processingInformation']
      end

      if attributes.has_key?(:'processorInformation')
        self.processor_information = attributes[:'processorInformation']
      end

      if attributes.has_key?(:'issuerInformation')
        self.issuer_information = attributes[:'issuerInformation']
      end

      if attributes.has_key?(:'paymentAccountInformation')
        self.payment_account_information = attributes[:'paymentAccountInformation']
      end

      if attributes.has_key?(:'paymentInformation')
        self.payment_information = attributes[:'paymentInformation']
      end

      if attributes.has_key?(:'orderInformation')
        self.order_information = attributes[:'orderInformation']
      end

      if attributes.has_key?(:'pointOfSaleInformation')
        self.point_of_sale_information = attributes[:'pointOfSaleInformation']
      end

      if attributes.has_key?(:'installmentInformation')
        self.installment_information = attributes[:'installmentInformation']
      end

      if attributes.has_key?(:'tokenInformation')
        self.token_information = attributes[:'tokenInformation']
      end

      if attributes.has_key?(:'riskInformation')
        self.risk_information = attributes[:'riskInformation']
      end

      if attributes.has_key?(:'consumerAuthenticationInformation')
        self.consumer_authentication_information = attributes[:'consumerAuthenticationInformation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] reconciliation_id Value to be assigned
    def reconciliation_id=(reconciliation_id)
      @reconciliation_id = reconciliation_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _links == o._links &&
          id == o.id &&
          submit_time_utc == o.submit_time_utc &&
          status == o.status &&
          reconciliation_id == o.reconciliation_id &&
          error_information == o.error_information &&
          client_reference_information == o.client_reference_information &&
          processing_information == o.processing_information &&
          processor_information == o.processor_information &&
          issuer_information == o.issuer_information &&
          payment_account_information == o.payment_account_information &&
          payment_information == o.payment_information &&
          order_information == o.order_information &&
          point_of_sale_information == o.point_of_sale_information &&
          installment_information == o.installment_information &&
          token_information == o.token_information &&
          risk_information == o.risk_information &&
          consumer_authentication_information == o.consumer_authentication_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_links, id, submit_time_utc, status, reconciliation_id, error_information, client_reference_information, processing_information, processor_information, issuer_information, payment_account_information, payment_information, order_information, point_of_sale_information, installment_information, token_information, risk_information, consumer_authentication_information].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
