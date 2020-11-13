# variables file
# contains the Dynatrace API URL and Token information

#############
# DYNATRACE #
#############

variable "API_URL" {
#replace with the Dynatrace environment URL (ex. https://ENVIRONMENTID.live.dynatrace.com/api)
type = string
default = "ReplaceWithYourOwnAPIUrl"
}

variable "DYNATRACE_API_TOKEN" {
#replace with the Dynatrace API Token, for more information see https://www.dynatrace.com/support/help/shortlink/api-authentication#generate-a-token
type = string
default = "ReplaceWithYourOwnAPIToken"
}

variable "PLATFORM_AS_A_SERVICE_TOKEN" {
#replace with the Dynatrace PaaS Token, for more information see https://www.dynatrace.com/support/help/shortlink/token#paas-token-
type = string
default = "ReplaceWithYourOwnPaaSToken"
}