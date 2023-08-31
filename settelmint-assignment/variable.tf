variable "azure_region"{
    description = "The azure region where resources should be created"
}

variable "resource_tags"{
    type = map(string)
    description = "Tags to be included on the created resource(s)"
}