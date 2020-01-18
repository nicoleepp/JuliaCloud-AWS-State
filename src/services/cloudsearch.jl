module aws_cloudsearch
include("AWSCorePrototypeServices.jl")
using .AWSCorePrototypeServices: cloudsearch

"""
Configures the access rules that control access to the domain's document and search endpoints. For more information, see  Configuring Access for an Amazon CloudSearch Domain.
"""
UpdateServiceAccessPolicies(DomainName, AccessPolicies) = cloudsearch("POST", "/")

"""
Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
"""
UpdateAvailabilityOptions(DomainName, MultiAZ) = cloudsearch("POST", "/")

"""
Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a matchall request to your domain's search endpoint: q=matchall&amp;amp;q.parser=structured&amp;amp;size=0. For more information, see Getting Information about a Search Domain in the Amazon CloudSearch Developer Guide.
"""
DescribeDomains() = cloudsearch("POST", "/")

"""
Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
"""
DefineSuggester(DomainName, Suggester) = cloudsearch("POST", "/")

"""
Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
"""
DescribeAvailabilityOptions(DomainName) = cloudsearch("POST", "/")

"""
Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Access for a Search Domain in the Amazon CloudSearch Developer Guide.
"""
DescribeServiceAccessPolicies(DomainName) = cloudsearch("POST", "/")

"""
Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a text field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
"""
DescribeAnalysisSchemes(DomainName) = cloudsearch("POST", "/")

"""
Configures an IndexField for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the IndexFieldType. If the field exists, the new configuration replaces the old one. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide. 
"""
DefineIndexField(DomainName, IndexField) = cloudsearch("POST", "/")

"""
Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
"""
DefineAnalysisScheme(DomainName, AnalysisScheme) = cloudsearch("POST", "/")

"""
Configures an Expression for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
"""
DefineExpression(DomainName, Expression) = cloudsearch("POST", "/")

"""
Removes an Expression from the search domain. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
"""
DeleteExpression(DomainName, ExpressionName) = cloudsearch("POST", "/")

"""
Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
"""
DescribeExpressions(DomainName) = cloudsearch("POST", "/")

"""
Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Domain Information in the Amazon CloudSearch Developer Guide.
"""
DescribeIndexFields(DomainName) = cloudsearch("POST", "/")

"""
Deletes a suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
"""
DeleteSuggester(DomainName, SuggesterName) = cloudsearch("POST", "/")

"""
Removes an IndexField from the search domain. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide.
"""
DeleteIndexField(DomainName, IndexFieldName) = cloudsearch("POST", "/")

"""
Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
"""
DescribeSuggesters(DomainName) = cloudsearch("POST", "/")

"""
Deletes an analysis scheme. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide. 
"""
DeleteAnalysisScheme(DomainName, AnalysisSchemeName) = cloudsearch("POST", "/")

"""
Indexes the search suggestions. For more information, see Configuring Suggesters in the Amazon CloudSearch Developer Guide.
"""
BuildSuggesters(DomainName) = cloudsearch("POST", "/")

"""
Lists all search domains owned by an account.
"""
ListDomainNames() = cloudsearch("POST", "/")

"""
Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see Deleting a Search Domain in the Amazon CloudSearch Developer Guide. 
"""
DeleteDomain(DomainName) = cloudsearch("POST", "/")

"""
Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the Amazon CloudSearch Developer Guide.
"""
DescribeDomainEndpointOptions(DomainName) = cloudsearch("POST", "/")

"""
Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the Amazon CloudSearch Developer Guide.
"""
UpdateDomainEndpointOptions(DomainName, DomainEndpointOptions) = cloudsearch("POST", "/")

"""
Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide.
"""
DescribeScalingParameters(DomainName) = cloudsearch("POST", "/")

"""
Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide. 
"""
UpdateScalingParameters(DomainName, ScalingParameters) = cloudsearch("POST", "/")

"""
Creates a new search domain. For more information, see Creating a Search Domain in the Amazon CloudSearch Developer Guide.
"""
CreateDomain(DomainName) = cloudsearch("POST", "/")

"""
Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose OptionStatus is RequiresIndexDocuments.
"""
IndexDocuments(DomainName) = cloudsearch("POST", "/")
end
