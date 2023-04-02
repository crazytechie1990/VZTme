{
    "format_version": "1.1",
    "terraform_version": "1.3.7",
    "planned_values": {
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_firewall.example",
                    "mode": "managed",
                    "type": "azurerm_firewall",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "dns_servers": null,
                        "firewall_policy_id": null,
                        "ip_configuration": [
                            {
                                "name": "configuration"
                            }
                        ],
                        "location": "westeurope",
                        "management_ip_configuration": [],
                        "name": "testfirewall",
                        "private_ip_ranges": null,
                        "resource_group_name": "example-resources",
                        "sku_name": "AZFW_VNet",
                        "sku_tier": "Standard",
                        "tags": null,
                        "timeouts": null,
                        "virtual_hub": [],
                        "zones": null
                    },
                    "sensitive_values": {
                        "ip_configuration": [
                            {}
                        ],
                        "management_ip_configuration": [],
                        "virtual_hub": []
                    }
                },
                {
                    "address": "azurerm_firewall_application_rule_collection.example",
                    "mode": "managed",
                    "type": "azurerm_firewall_application_rule_collection",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "action": "Allow",
                        "azure_firewall_name": "testfirewall",
                        "name": "testcollection",
                        "priority": 100,
                        "resource_group_name": "example-resources",
                        "rule": [
                            {
                                "description": null,
                                "fqdn_tags": null,
                                "name": "testrule",
                                "protocol": [
                                    {
                                        "port": 443,
                                        "type": "Https"
                                    }
                                ],
                                "source_addresses": [
                                    "10.0.0.0/16"
                                ],
                                "source_ip_groups": null,
                                "target_fqdns": [
                                    "*.google.com"
                                ]
                            }
                        ],
                        "timeouts": null
                    },
                    "sensitive_values": {
                        "rule": [
                            {
                                "protocol": [
                                    {}
                                ],
                                "source_addresses": [
                                    false
                                ],
                                "target_fqdns": [
                                    false
                                ]
                            }
                        ]
                    }
                },
                {
                    "address": "azurerm_firewall_policy.example",
                    "mode": "managed",
                    "type": "azurerm_firewall_policy",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "auto_learn_private_ranges_enabled": null,
                        "base_policy_id": null,
                        "dns": [],
                        "explicit_proxy": [],
                        "identity": [],
                        "insights": [],
                        "intrusion_detection": [],
                        "location": "westeurope",
                        "name": "example-policy",
                        "private_ip_ranges": null,
                        "resource_group_name": "example-resources",
                        "sql_redirect_allowed": null,
                        "tags": null,
                        "threat_intelligence_allowlist": [],
                        "threat_intelligence_mode": "Alert",
                        "timeouts": null,
                        "tls_certificate": []
                    },
                    "sensitive_values": {
                        "child_policies": [],
                        "dns": [],
                        "explicit_proxy": [],
                        "firewalls": [],
                        "identity": [],
                        "insights": [],
                        "intrusion_detection": [],
                        "rule_collection_groups": [],
                        "threat_intelligence_allowlist": [],
                        "tls_certificate": []
                    }
                },
                {
                    "address": "azurerm_public_ip.example",
                    "mode": "managed",
                    "type": "azurerm_public_ip",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "westeurope",
                        "name": "testpip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "example-resources",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    },
                    "sensitive_values": {}
                },
                {
                    "address": "azurerm_resource_group.example",
                    "mode": "managed",
                    "type": "azurerm_resource_group",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "location": "westeurope",
                        "name": "example-resources",
                        "tags": null,
                        "timeouts": null
                    },
                    "sensitive_values": {}
                },
                {
                    "address": "azurerm_subnet.example",
                    "mode": "managed",
                    "type": "azurerm_subnet",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "address_prefixes": [
                            "10.0.1.0/24"
                        ],
                        "delegation": [],
                        "name": "AzureFirewallSubnet",
                        "resource_group_name": "example-resources",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "testvnet"
                    },
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": []
                    }
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "mode": "managed",
                    "type": "azurerm_virtual_network",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "values": {
                        "address_space": [
                            "10.0.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "flow_timeout_in_minutes": null,
                        "location": "westeurope",
                        "name": "testvnet",
                        "resource_group_name": "example-resources",
                        "tags": null,
                        "timeouts": null
                    },
                    "sensitive_values": {
                        "address_space": [
                            false
                        ],
                        "ddos_protection_plan": [],
                        "dns_servers": [],
                        "subnet": []
                    }
                }
            ]
        }
    },
    "resource_changes": [
        {
            "address": "azurerm_firewall.example",
            "mode": "managed",
            "type": "azurerm_firewall",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "dns_servers": null,
                    "firewall_policy_id": null,
                    "ip_configuration": [
                        {
                            "name": "configuration"
                        }
                    ],
                    "location": "westeurope",
                    "management_ip_configuration": [],
                    "name": "testfirewall",
                    "private_ip_ranges": null,
                    "resource_group_name": "example-resources",
                    "sku_name": "AZFW_VNet",
                    "sku_tier": "Standard",
                    "tags": null,
                    "timeouts": null,
                    "virtual_hub": [],
                    "zones": null
                },
                "after_unknown": {
                    "id": true,
                    "ip_configuration": [
                        {
                            "private_ip_address": true,
                            "public_ip_address_id": true,
                            "subnet_id": true
                        }
                    ],
                    "management_ip_configuration": [],
                    "threat_intel_mode": true,
                    "virtual_hub": []
                },
                "before_sensitive": false,
                "after_sensitive": {
                    "ip_configuration": [
                        {}
                    ],
                    "management_ip_configuration": [],
                    "virtual_hub": []
                }
            }
        },
        {
            "address": "azurerm_firewall_application_rule_collection.example",
            "mode": "managed",
            "type": "azurerm_firewall_application_rule_collection",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "action": "Allow",
                    "azure_firewall_name": "testfirewall",
                    "name": "testcollection",
                    "priority": 100,
                    "resource_group_name": "example-resources",
                    "rule": [
                        {
                            "description": null,
                            "fqdn_tags": null,
                            "name": "testrule",
                            "protocol": [
                                {
                                    "port": 443,
                                    "type": "Https"
                                }
                            ],
                            "source_addresses": [
                                "10.0.0.0/16"
                            ],
                            "source_ip_groups": null,
                            "target_fqdns": [
                                "*.google.com"
                            ]
                        }
                    ],
                    "timeouts": null
                },
                "after_unknown": {
                    "id": true,
                    "rule": [
                        {
                            "protocol": [
                                {}
                            ],
                            "source_addresses": [
                                false
                            ],
                            "target_fqdns": [
                                false
                            ]
                        }
                    ]
                },
                "before_sensitive": false,
                "after_sensitive": {
                    "rule": [
                        {
                            "protocol": [
                                {}
                            ],
                            "source_addresses": [
                                false
                            ],
                            "target_fqdns": [
                                false
                            ]
                        }
                    ]
                }
            }
        },
        {
            "address": "azurerm_firewall_policy.example",
            "mode": "managed",
            "type": "azurerm_firewall_policy",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "auto_learn_private_ranges_enabled": null,
                    "base_policy_id": null,
                    "dns": [],
                    "explicit_proxy": [],
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "location": "westeurope",
                    "name": "example-policy",
                    "private_ip_ranges": null,
                    "resource_group_name": "example-resources",
                    "sql_redirect_allowed": null,
                    "tags": null,
                    "threat_intelligence_allowlist": [],
                    "threat_intelligence_mode": "Alert",
                    "timeouts": null,
                    "tls_certificate": []
                },
                "after_unknown": {
                    "child_policies": true,
                    "dns": [],
                    "explicit_proxy": [],
                    "firewalls": true,
                    "id": true,
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "rule_collection_groups": true,
                    "sku": true,
                    "threat_intelligence_allowlist": [],
                    "tls_certificate": []
                },
                "before_sensitive": false,
                "after_sensitive": {
                    "child_policies": [],
                    "dns": [],
                    "explicit_proxy": [],
                    "firewalls": [],
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "rule_collection_groups": [],
                    "threat_intelligence_allowlist": [],
                    "tls_certificate": []
                }
            }
        },
        {
            "address": "azurerm_public_ip.example",
            "mode": "managed",
            "type": "azurerm_public_ip",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": null,
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "westeurope",
                    "name": "testpip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "example-resources",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null,
                    "zones": null
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "ip_address": true
                },
                "before_sensitive": false,
                "after_sensitive": {}
            }
        },
        {
            "address": "azurerm_resource_group.example",
            "mode": "managed",
            "type": "azurerm_resource_group",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "location": "westeurope",
                    "name": "example-resources",
                    "tags": null,
                    "timeouts": null
                },
                "after_unknown": {
                    "id": true
                },
                "before_sensitive": false,
                "after_sensitive": {}
            }
        },
        {
            "address": "azurerm_subnet.example",
            "mode": "managed",
            "type": "azurerm_subnet",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "address_prefixes": [
                        "10.0.1.0/24"
                    ],
                    "delegation": [],
                    "name": "AzureFirewallSubnet",
                    "resource_group_name": "example-resources",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "testvnet"
                },
                "after_unknown": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [],
                    "enforce_private_link_endpoint_network_policies": true,
                    "enforce_private_link_service_network_policies": true,
                    "id": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true
                },
                "before_sensitive": false,
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": []
                }
            }
        },
        {
            "address": "azurerm_virtual_network.example",
            "mode": "managed",
            "type": "azurerm_virtual_network",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "change": {
                "actions": [
                    "create"
                ],
                "before": null,
                "after": {
                    "address_space": [
                        "10.0.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "flow_timeout_in_minutes": null,
                    "location": "westeurope",
                    "name": "testvnet",
                    "resource_group_name": "example-resources",
                    "tags": null,
                    "timeouts": null
                },
                "after_unknown": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": true,
                    "guid": true,
                    "id": true,
                    "subnet": true
                },
                "before_sensitive": false,
                "after_sensitive": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": [],
                    "subnet": []
                }
            }
        }
    ],
    "configuration": {
        "provider_config": {
            "azurerm": {
                "name": "azurerm",
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "version_constraint": "3.50.0",
                "expressions": {
                    "features": [
                        {}
                    ]
                }
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_firewall.example",
                    "mode": "managed",
                    "type": "azurerm_firewall",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.example.id",
                                        "azurerm_public_ip.example"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.example.id",
                                        "azurerm_subnet.example"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "testfirewall"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "AZFW_VNet"
                        },
                        "sku_tier": {
                            "constant_value": "Standard"
                        }
                    },
                    "schema_version": 0
                },
                {
                    "address": "azurerm_firewall_application_rule_collection.example",
                    "mode": "managed",
                    "type": "azurerm_firewall_application_rule_collection",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "action": {
                            "constant_value": "Allow"
                        },
                        "azure_firewall_name": {
                            "references": [
                                "azurerm_firewall.example.name",
                                "azurerm_firewall.example"
                            ]
                        },
                        "name": {
                            "constant_value": "testcollection"
                        },
                        "priority": {
                            "constant_value": 100
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "rule": [
                            {
                                "name": {
                                    "constant_value": "testrule"
                                },
                                "protocol": [
                                    {
                                        "port": {
                                            "constant_value": "443"
                                        },
                                        "type": {
                                            "constant_value": "Https"
                                        }
                                    }
                                ],
                                "source_addresses": {
                                    "constant_value": [
                                        "10.0.0.0/16"
                                    ]
                                },
                                "target_fqdns": {
                                    "constant_value": [
                                        "*.google.com"
                                    ]
                                }
                            }
                        ]
                    },
                    "schema_version": 0
                },
                {
                    "address": "azurerm_firewall_policy.example",
                    "mode": "managed",
                    "type": "azurerm_firewall_policy",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-policy"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "schema_version": 0
                },
                {
                    "address": "azurerm_public_ip.example",
                    "mode": "managed",
                    "type": "azurerm_public_ip",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "testpip"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "schema_version": 0
                },
                {
                    "address": "azurerm_resource_group.example",
                    "mode": "managed",
                    "type": "azurerm_resource_group",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "constant_value": "example-resources"
                        }
                    },
                    "schema_version": 0
                },
                {
                    "address": "azurerm_subnet.example",
                    "mode": "managed",
                    "type": "azurerm_subnet",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureFirewallSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.example.name",
                                "azurerm_virtual_network.example"
                            ]
                        }
                    },
                    "schema_version": 0
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "mode": "managed",
                    "type": "azurerm_virtual_network",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "testvnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "schema_version": 0
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "resource": "azurerm_subnet.example",
            "attribute": [
                "id"
            ]
        },
        {
            "resource": "azurerm_public_ip.example",
            "attribute": [
                "id"
            ]
        },
        {
            "resource": "azurerm_firewall.example",
            "attribute": [
                "name"
            ]
        },
        {
            "resource": "azurerm_resource_group.example",
            "attribute": [
                "name"
            ]
        },
        {
            "resource": "azurerm_resource_group.example",
            "attribute": [
                "location"
            ]
        },
        {
            "resource": "azurerm_virtual_network.example",
            "attribute": [
                "name"
            ]
        }
    ]
}
