module AWSCoreServices

include("AWSCorePrototype.jl")

const mgh = AWSCorePrototype.JSONService("mgh", "2017-05-31", "1.1", "AWSMigrationHub")
const access-analyzer = AWSCorePrototype.RestJSONService("access-analyzer", "2019-11-01")
const acm = AWSCorePrototype.JSONService("acm", "2015-12-08", "1.1", "CertificateManager")
const acm-pca = AWSCorePrototype.JSONService("acm-pca", "2017-08-22", "1.1", "ACMPrivateCA")
const a4b = AWSCorePrototype.JSONService("a4b", "2017-11-09", "1.1", "AlexaForBusiness")
const amplify = AWSCorePrototype.RestJSONService("amplify", "2017-07-25")
const apigateway = AWSCorePrototype.RestJSONService("apigateway", "2015-07-09")
const execute-api = AWSCorePrototype.RestJSONService("execute-api", "2018-11-29")
const apigateway = AWSCorePrototype.RestJSONService("apigateway", "2018-11-29")
const appconfig = AWSCorePrototype.RestJSONService("appconfig", "2019-10-09")
const application-autoscaling = AWSCorePrototype.JSONService("application-autoscaling", "2016-02-06", "1.1", "AnyScaleFrontendService")
const applicationinsights = AWSCorePrototype.JSONService("applicationinsights", "2018-11-25", "1.1", "EC2WindowsBarleyService")
const appmesh = AWSCorePrototype.RestJSONService("appmesh", "2018-10-01")
const appmesh = AWSCorePrototype.RestJSONService("appmesh", "2019-01-25")
const appstream2 = AWSCorePrototype.JSONService("appstream2", "2016-12-01", "1.1", "PhotonAdminProxyService")
const appsync = AWSCorePrototype.RestJSONService("appsync", "2017-07-25")
const athena = AWSCorePrototype.JSONService("athena", "2017-05-18", "1.1", "AmazonAthena")
const autoscaling = AWSCorePrototype.QueryService("autoscaling", "2011-01-01")
const autoscaling-plans = AWSCorePrototype.JSONService("autoscaling-plans", "2018-01-06", "1.1", "AnyScaleScalingPlannerFrontendService")
const backup = AWSCorePrototype.RestJSONService("backup", "2018-11-15")
const batch = AWSCorePrototype.RestJSONService("batch", "2016-08-10")
const budgets = AWSCorePrototype.JSONService("budgets", "2016-10-20", "1.1", "AWSBudgetServiceGateway")
const ce = AWSCorePrototype.JSONService("ce", "2017-10-25", "1.1", "AWSInsightsIndexService")
const chime = AWSCorePrototype.RestJSONService("chime", "2018-05-01")
const cloud9 = AWSCorePrototype.JSONService("cloud9", "2017-09-23", "1.1", "AWSCloud9WorkspaceManagementService")
const clouddirectory = AWSCorePrototype.RestJSONService("clouddirectory", "2016-05-10")
const clouddirectory = AWSCorePrototype.RestJSONService("clouddirectory", "2017-01-11")
const cloudformation = AWSCorePrototype.QueryService("cloudformation", "2010-05-15")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2016-11-25")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2017-03-25")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2017-10-30")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2018-06-18")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2018-11-05")
const cloudfront = AWSCorePrototype.RestXMLService("cloudfront", "2019-03-26")
const cloudhsm = AWSCorePrototype.JSONService("cloudhsm", "2014-05-30", "1.1", "CloudHsmFrontendService")
const cloudhsmv2 = AWSCorePrototype.JSONService("cloudhsmv2", "2017-04-28", "1.1", "BaldrApiService")
const cloudsearch = AWSCorePrototype.QueryService("cloudsearch", "2011-02-01")
const cloudsearch = AWSCorePrototype.QueryService("cloudsearch", "2013-01-01")
const cloudsearchdomain = AWSCorePrototype.RestJSONService("cloudsearchdomain", "2013-01-01")
const cloudtrail = AWSCorePrototype.JSONService("cloudtrail", "2013-11-01", "1.1", "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101")
const codebuild = AWSCorePrototype.JSONService("codebuild", "2016-10-06", "1.1", "CodeBuild_20161006")
const codecommit = AWSCorePrototype.JSONService("codecommit", "2015-04-13", "1.1", "CodeCommit_20150413")
const codedeploy = AWSCorePrototype.JSONService("codedeploy", "2014-10-06", "1.1", "CodeDeploy_20141006")
const codeguru-reviewer = AWSCorePrototype.RestJSONService("codeguru-reviewer", "2019-09-19")
const codeguru-profiler = AWSCorePrototype.RestJSONService("codeguru-profiler", "2019-07-18")
const codepipeline = AWSCorePrototype.JSONService("codepipeline", "2015-07-09", "1.1", "CodePipeline_20150709")
const codestar = AWSCorePrototype.JSONService("codestar", "2017-04-19", "1.1", "CodeStar_20170419")
const codestar-connections = AWSCorePrototype.JSONService("codestar-connections", "2019-12-01", "1.0", "com.amazonaws.codestar.connections.CodeStar_connections_20191201")
const codestar-notifications = AWSCorePrototype.RestJSONService("codestar-notifications", "2019-10-15")
const cognito-identity = AWSCorePrototype.JSONService("cognito-identity", "2014-06-30", "1.1", "AWSCognitoIdentityService")
const cognito-idp = AWSCorePrototype.JSONService("cognito-idp", "2016-04-18", "1.1", "AWSCognitoIdentityProviderService")
const cognito-sync = AWSCorePrototype.RestJSONService("cognito-sync", "2014-06-30")
const comprehend = AWSCorePrototype.JSONService("comprehend", "2017-11-27", "1.1", "Comprehend_20171127")
const comprehendmedical = AWSCorePrototype.JSONService("comprehendmedical", "2018-10-30", "1.1", "ComprehendMedical_20181030")
const compute-optimizer = AWSCorePrototype.JSONService("compute-optimizer", "2019-11-01", "1.0", "ComputeOptimizerService")
const config = AWSCorePrototype.JSONService("config", "2014-11-12", "1.1", "StarlingDoveService")
const connect = AWSCorePrototype.RestJSONService("connect", "2017-08-08")
const participant.connect = AWSCorePrototype.RestJSONService("participant.connect", "2018-09-07")
const cur = AWSCorePrototype.JSONService("cur", "2017-01-06", "1.1", "AWSOrigamiServiceGatewayService")
const dataexchange = AWSCorePrototype.RestJSONService("dataexchange", "2017-07-25")
const datapipeline = AWSCorePrototype.JSONService("datapipeline", "2012-10-29", "1.1", "DataPipeline")
const datasync = AWSCorePrototype.JSONService("datasync", "2018-11-09", "1.1", "FmrsService")
const dax = AWSCorePrototype.JSONService("dax", "2017-04-19", "1.1", "AmazonDAXV3")
const api.detective = AWSCorePrototype.RestJSONService("api.detective", "2018-10-26")
const devicefarm = AWSCorePrototype.JSONService("devicefarm", "2015-06-23", "1.1", "DeviceFarm_20150623")
const directconnect = AWSCorePrototype.JSONService("directconnect", "2012-10-25", "1.1", "OvertureService")
const discovery = AWSCorePrototype.JSONService("discovery", "2015-11-01", "1.1", "AWSPoseidonService_V2015_11_01")
const dlm = AWSCorePrototype.RestJSONService("dlm", "2018-01-12")
const dms = AWSCorePrototype.JSONService("dms", "2016-01-01", "1.1", "AmazonDMSv20160101")
const rds = AWSCorePrototype.QueryService("rds", "2014-10-31")
const ds = AWSCorePrototype.JSONService("ds", "2015-04-16", "1.1", "DirectoryService_20150416")
const dynamodb = AWSCorePrototype.JSONService("dynamodb", "2011-12-05", "1.0", "DynamoDB_20111205")
const dynamodb = AWSCorePrototype.JSONService("dynamodb", "2012-08-10", "1.0", "DynamoDB_20120810")
const ebs = AWSCorePrototype.RestJSONService("ebs", "2019-11-02")
const ec2 = AWSCorePrototype.QueryService("ec2", "2016-11-15")
const ec2-instance-connect = AWSCorePrototype.JSONService("ec2-instance-connect", "2018-04-02", "1.1", "AWSEC2InstanceConnectService")
const api.ecr = AWSCorePrototype.JSONService("api.ecr", "2015-09-21", "1.1", "AmazonEC2ContainerRegistry_V20150921")
const ecs = AWSCorePrototype.JSONService("ecs", "2014-11-13", "1.1", "AmazonEC2ContainerServiceV20141113")
const eks = AWSCorePrototype.RestJSONService("eks", "2017-11-01")
const api.elastic-inference = AWSCorePrototype.RestJSONService("api.elastic-inference", "2017-07-25")
const elasticache = AWSCorePrototype.QueryService("elasticache", "2015-02-02")
const elasticbeanstalk = AWSCorePrototype.QueryService("elasticbeanstalk", "2010-12-01")
const elasticfilesystem = AWSCorePrototype.RestJSONService("elasticfilesystem", "2015-02-01")
const elasticloadbalancing = AWSCorePrototype.QueryService("elasticloadbalancing", "2012-06-01")
const elasticloadbalancing = AWSCorePrototype.QueryService("elasticloadbalancing", "2015-12-01")
const elasticmapreduce = AWSCorePrototype.JSONService("elasticmapreduce", "2009-03-31", "1.1", "ElasticMapReduce")
const elastictranscoder = AWSCorePrototype.RestJSONService("elastictranscoder", "2012-09-25")
const email = AWSCorePrototype.QueryService("email", "2010-12-01")
const entitlement.marketplace = AWSCorePrototype.JSONService("entitlement.marketplace", "2017-01-11", "1.1", "AWSMPEntitlementService")
const es = AWSCorePrototype.RestJSONService("es", "2015-01-01")
const events = AWSCorePrototype.JSONService("events", "2015-10-07", "1.1", "AWSEvents")
const events = AWSCorePrototype.JSONService("events", "2015-10-07", "1.1", "AWSEvents")
const firehose = AWSCorePrototype.JSONService("firehose", "2015-08-04", "1.1", "Firehose_20150804")
const fms = AWSCorePrototype.JSONService("fms", "2018-01-01", "1.1", "AWSFMS_20180101")
const forecast = AWSCorePrototype.JSONService("forecast", "2018-06-26", "1.1", "AmazonForecast")
const forecastquery = AWSCorePrototype.JSONService("forecastquery", "2018-06-26", "1.1", "AmazonForecastRuntime")
const frauddetector = AWSCorePrototype.JSONService("frauddetector", "2019-11-15", "1.1", "AWSHawksNestServiceFacade")
const fsx = AWSCorePrototype.JSONService("fsx", "2018-03-01", "1.1", "AWSSimbaAPIService_v20180301")
const gamelift = AWSCorePrototype.JSONService("gamelift", "2015-10-01", "1.1", "GameLift")
const glacier = AWSCorePrototype.RestJSONService("glacier", "2012-06-01")
const globalaccelerator = AWSCorePrototype.JSONService("globalaccelerator", "2018-08-08", "1.1", "GlobalAccelerator_V20180706")
const glue = AWSCorePrototype.JSONService("glue", "2017-03-31", "1.1", "AWSGlue")
const greengrass = AWSCorePrototype.RestJSONService("greengrass", "2017-06-07")
const groundstation = AWSCorePrototype.RestJSONService("groundstation", "2019-05-23")
const guardduty = AWSCorePrototype.RestJSONService("guardduty", "2017-11-28")
const health = AWSCorePrototype.JSONService("health", "2016-08-04", "1.1", "AWSHealth_20160804")
const iam = AWSCorePrototype.QueryService("iam", "2010-05-08")
const imagebuilder = AWSCorePrototype.RestJSONService("imagebuilder", "2019-12-02")
const importexport = AWSCorePrototype.QueryService("importexport", "2010-06-01")
const inspector = AWSCorePrototype.JSONService("inspector", "2016-02-16", "1.1", "InspectorService")
const iot = AWSCorePrototype.RestJSONService("iot", "2015-05-28")
const data.iot = AWSCorePrototype.RestJSONService("data.iot", "2015-05-28")
const data.jobs.iot = AWSCorePrototype.RestJSONService("data.jobs.iot", "2017-09-29")
const devices.iot1click = AWSCorePrototype.RestJSONService("devices.iot1click", "2018-05-14")
const projects.iot1click = AWSCorePrototype.RestJSONService("projects.iot1click", "2018-05-14")
const iotanalytics = AWSCorePrototype.RestJSONService("iotanalytics", "2017-11-27")
const iotevents = AWSCorePrototype.RestJSONService("iotevents", "2018-07-27")
const data.iotevents = AWSCorePrototype.RestJSONService("data.iotevents", "2018-10-23")
const api.tunneling.iot = AWSCorePrototype.JSONService("api.tunneling.iot", "2018-10-05", "1.1", "IoTSecuredTunneling")
const iotthingsgraph = AWSCorePrototype.JSONService("iotthingsgraph", "2018-09-06", "1.1", "IotThingsGraphFrontEndService")
const kafka = AWSCorePrototype.RestJSONService("kafka", "2018-11-14")
const kendra = AWSCorePrototype.JSONService("kendra", "2019-02-03", "1.1", "AWSKendraFrontendService")
const kinesis = AWSCorePrototype.JSONService("kinesis", "2013-12-02", "1.1", "Kinesis_20131202")
const kinesisvideo = AWSCorePrototype.RestJSONService("kinesisvideo", "2017-09-30")
const kinesisvideo = AWSCorePrototype.RestJSONService("kinesisvideo", "2017-09-30")
const kinesisvideo = AWSCorePrototype.RestJSONService("kinesisvideo", "2019-12-04")
const kinesisanalytics = AWSCorePrototype.JSONService("kinesisanalytics", "2015-08-14", "1.1", "KinesisAnalytics_20150814")
const kinesisanalytics = AWSCorePrototype.JSONService("kinesisanalytics", "2018-05-23", "1.1", "KinesisAnalytics_20180523")
const kinesisvideo = AWSCorePrototype.RestJSONService("kinesisvideo", "2017-09-30")
const kms = AWSCorePrototype.JSONService("kms", "2014-11-01", "1.1", "TrentService")
const lakeformation = AWSCorePrototype.JSONService("lakeformation", "2017-03-31", "1.1", "AWSLakeFormation")
const lambda = AWSCorePrototype.RestJSONService("lambda", "2014-11-11")
const lambda = AWSCorePrototype.RestJSONService("lambda", "2015-03-31")
const models.lex = AWSCorePrototype.RestJSONService("models.lex", "2017-04-19")
const license-manager = AWSCorePrototype.JSONService("license-manager", "2018-08-01", "1.1", "AWSLicenseManager")
const lightsail = AWSCorePrototype.JSONService("lightsail", "2016-11-28", "1.1", "Lightsail_20161128")
const logs = AWSCorePrototype.JSONService("logs", "2014-03-28", "1.1", "Logs_20140328")
const machinelearning = AWSCorePrototype.JSONService("machinelearning", "2014-12-12", "1.1", "AmazonML_20141212")
const macie = AWSCorePrototype.JSONService("macie", "2017-12-19", "1.1", "MacieService")
const managedblockchain = AWSCorePrototype.RestJSONService("managedblockchain", "2018-09-24")
const catalog.marketplace = AWSCorePrototype.RestJSONService("catalog.marketplace", "2018-09-17")
const marketplacecommerceanalytics = AWSCorePrototype.JSONService("marketplacecommerceanalytics", "2015-07-01", "1.1", "MarketplaceCommerceAnalytics20150701")
const mediaconnect = AWSCorePrototype.RestJSONService("mediaconnect", "2018-11-14")
const mediaconvert = AWSCorePrototype.RestJSONService("mediaconvert", "2017-08-29")
const medialive = AWSCorePrototype.RestJSONService("medialive", "2017-10-14")
const mediapackage = AWSCorePrototype.RestJSONService("mediapackage", "2017-10-12")
const mediapackage-vod = AWSCorePrototype.RestJSONService("mediapackage-vod", "2018-11-07")
const mediastore = AWSCorePrototype.JSONService("mediastore", "2017-09-01", "1.1", "MediaStore_20170901")
const data.mediastore = AWSCorePrototype.RestJSONService("data.mediastore", "2017-09-01")
const api.mediatailor = AWSCorePrototype.RestJSONService("api.mediatailor", "2018-04-23")
const metering.marketplace = AWSCorePrototype.JSONService("metering.marketplace", "2016-01-14", "1.1", "AWSMPMeteringService")
const migrationhub-config = AWSCorePrototype.JSONService("migrationhub-config", "2019-06-30", "1.1", "AWSMigrationHubMultiAccountService")
const mobile = AWSCorePrototype.RestJSONService("mobile", "2017-07-01")
const mobileanalytics = AWSCorePrototype.RestJSONService("mobileanalytics", "2014-06-05")
const monitoring = AWSCorePrototype.QueryService("monitoring", "2010-08-01")
const mq = AWSCorePrototype.RestJSONService("mq", "2017-11-27")
const mturk-requester = AWSCorePrototype.JSONService("mturk-requester", "2017-01-17", "1.1", "MTurkRequesterServiceV20170117")
const rds = AWSCorePrototype.QueryService("rds", "2014-10-31")
const networkmanager = AWSCorePrototype.RestJSONService("networkmanager", "2019-07-05")
const opsworks = AWSCorePrototype.JSONService("opsworks", "2013-02-18", "1.1", "OpsWorks_20130218")
const opsworks-cm = AWSCorePrototype.JSONService("opsworks-cm", "2016-11-01", "1.1", "OpsWorksCM_V2016_11_01")
const organizations = AWSCorePrototype.JSONService("organizations", "2016-11-28", "1.1", "AWSOrganizationsV20161128")
const outposts = AWSCorePrototype.RestJSONService("outposts", "2019-12-03")
const personalize = AWSCorePrototype.JSONService("personalize", "2018-05-22", "1.1", "AmazonPersonalize")
const personalize-events = AWSCorePrototype.RestJSONService("personalize-events", "2018-03-22")
const personalize-runtime = AWSCorePrototype.RestJSONService("personalize-runtime", "2018-05-22")
const pi = AWSCorePrototype.JSONService("pi", "2018-02-27", "1.1", "PerformanceInsightsv20180227")
const pinpoint = AWSCorePrototype.RestJSONService("pinpoint", "2016-12-01")
const email = AWSCorePrototype.RestJSONService("email", "2018-07-26")
const polly = AWSCorePrototype.RestJSONService("polly", "2016-06-10")
const api.pricing = AWSCorePrototype.JSONService("api.pricing", "2017-10-15", "1.1", "AWSPriceListService")
const qldb = AWSCorePrototype.RestJSONService("qldb", "2019-01-02")
const session.qldb = AWSCorePrototype.JSONService("session.qldb", "2019-07-11", "1.0", "QLDBSession")
const quicksight = AWSCorePrototype.RestJSONService("quicksight", "2018-04-01")
const ram = AWSCorePrototype.RestJSONService("ram", "2018-01-04")
const rds = AWSCorePrototype.QueryService("rds", "2013-01-10")
const rds = AWSCorePrototype.QueryService("rds", "2013-02-12")
const rds = AWSCorePrototype.QueryService("rds", "2013-09-09")
const rds = AWSCorePrototype.QueryService("rds", "2014-09-01")
const rds = AWSCorePrototype.QueryService("rds", "2014-10-31")
const rds-data = AWSCorePrototype.RestJSONService("rds-data", "2018-08-01")
const redshift = AWSCorePrototype.QueryService("redshift", "2012-12-01")
const rekognition = AWSCorePrototype.JSONService("rekognition", "2016-06-27", "1.1", "RekognitionService")
const resource-groups = AWSCorePrototype.RestJSONService("resource-groups", "2017-11-27")
const tagging = AWSCorePrototype.JSONService("tagging", "2017-01-26", "1.1", "ResourceGroupsTaggingAPI_20170126")
const robomaker = AWSCorePrototype.RestJSONService("robomaker", "2018-06-29")
const route53 = AWSCorePrototype.RestXMLService("route53", "2013-04-01")
const route53domains = AWSCorePrototype.JSONService("route53domains", "2014-05-15", "1.1", "Route53Domains_v20140515")
const route53resolver = AWSCorePrototype.JSONService("route53resolver", "2018-04-01", "1.1", "Route53Resolver")
const runtime.lex = AWSCorePrototype.RestJSONService("runtime.lex", "2016-11-28")
const runtime.sagemaker = AWSCorePrototype.RestJSONService("runtime.sagemaker", "2017-05-13")
const s3 = AWSCorePrototype.RestXMLService("s3", "2006-03-01")
const s3-control = AWSCorePrototype.RestXMLService("s3-control", "2018-08-20")
const api.sagemaker = AWSCorePrototype.JSONService("api.sagemaker", "2017-07-24", "1.1", "SageMaker")
const a2i-runtime.sagemaker = AWSCorePrototype.RestJSONService("a2i-runtime.sagemaker", "2019-11-07")
const savingsplans = AWSCorePrototype.RestJSONService("savingsplans", "2019-06-28")
const schemas = AWSCorePrototype.RestJSONService("schemas", "2019-12-02")
const sdb = AWSCorePrototype.QueryService("sdb", "2009-04-15")
const secretsmanager = AWSCorePrototype.JSONService("secretsmanager", "2017-10-17", "1.1", "secretsmanager")
const securityhub = AWSCorePrototype.RestJSONService("securityhub", "2018-10-26")
const serverlessrepo = AWSCorePrototype.RestJSONService("serverlessrepo", "2017-09-08")
const servicequotas = AWSCorePrototype.JSONService("servicequotas", "2019-06-24", "1.1", "ServiceQuotasV20190624")
const servicecatalog = AWSCorePrototype.JSONService("servicecatalog", "2015-12-10", "1.1", "AWS242ServiceCatalogService")
const servicediscovery = AWSCorePrototype.JSONService("servicediscovery", "2017-03-14", "1.1", "Route53AutoNaming_v20170314")
const email = AWSCorePrototype.RestJSONService("email", "2019-09-27")
const shield = AWSCorePrototype.JSONService("shield", "2016-06-02", "1.1", "AWSShield_20160616")
const signer = AWSCorePrototype.RestJSONService("signer", "2017-08-25")
const sms = AWSCorePrototype.JSONService("sms", "2016-10-24", "1.1", "AWSServerMigrationService_V2016_10_24")
const sms-voice.pinpoint = AWSCorePrototype.RestJSONService("sms-voice.pinpoint", "2018-09-05")
const snowball = AWSCorePrototype.JSONService("snowball", "2016-06-30", "1.1", "AWSIESnowballJobManagementService")
const sns = AWSCorePrototype.QueryService("sns", "2010-03-31")
const sqs = AWSCorePrototype.QueryService("sqs", "2012-11-05")
const ssm = AWSCorePrototype.JSONService("ssm", "2014-11-06", "1.1", "AmazonSSM")
const portal.sso = AWSCorePrototype.RestJSONService("portal.sso", "2019-06-10")
const oidc = AWSCorePrototype.RestJSONService("oidc", "2019-06-10")
const states = AWSCorePrototype.JSONService("states", "2016-11-23", "1.0", "AWSStepFunctions")
const storagegateway = AWSCorePrototype.JSONService("storagegateway", "2013-06-30", "1.1", "StorageGateway_20130630")
const streams.dynamodb = AWSCorePrototype.JSONService("streams.dynamodb", "2012-08-10", "1.0", "DynamoDBStreams_20120810")
const sts = AWSCorePrototype.QueryService("sts", "2011-06-15")
const support = AWSCorePrototype.JSONService("support", "2013-04-15", "1.1", "AWSSupport_20130415")
const swf = AWSCorePrototype.JSONService("swf", "2012-01-25", "1.0", "SimpleWorkflowService")
const textract = AWSCorePrototype.JSONService("textract", "2018-06-27", "1.1", "Textract")
const transcribe = AWSCorePrototype.JSONService("transcribe", "2017-10-26", "1.1", "Transcribe")
const transfer = AWSCorePrototype.JSONService("transfer", "2018-11-05", "1.1", "TransferService")
const translate = AWSCorePrototype.JSONService("translate", "2017-07-01", "1.1", "AWSShineFrontendService_20170701")
const waf = AWSCorePrototype.JSONService("waf", "2015-08-24", "1.1", "AWSWAF_20150824")
const waf-regional = AWSCorePrototype.JSONService("waf-regional", "2016-11-28", "1.1", "AWSWAF_Regional_20161128")
const wafv2 = AWSCorePrototype.JSONService("wafv2", "2019-07-29", "1.1", "AWSWAF_20190729")
const workdocs = AWSCorePrototype.RestJSONService("workdocs", "2016-05-01")
const worklink = AWSCorePrototype.RestJSONService("worklink", "2018-09-25")
const workmail = AWSCorePrototype.JSONService("workmail", "2017-10-01", "1.1", "WorkMailService")
const workmailmessageflow = AWSCorePrototype.RestJSONService("workmailmessageflow", "2019-05-01")
const workspaces = AWSCorePrototype.JSONService("workspaces", "2015-04-08", "1.1", "WorkspacesService")
const xray = AWSCorePrototype.RestJSONService("xray", "2016-04-12")

end
