local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_webhook', url='', help='`dialogflow_cx_webhook` represents the `google_dialogflow_cx_webhook` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  generic_web_service:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_webhook.generic_web_service.new` constructs a new object with attributes and blocks configured for the `generic_web_service`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_ca_certs` (`list`): Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. When `null`, the `allowed_ca_certs` field will be omitted from the resulting object.\n  - `request_headers` (`obj`): The HTTP request headers to send together with webhook requests. When `null`, the `request_headers` field will be omitted from the resulting object.\n  - `uri` (`string`): Whether to use speech adaptation for speech recognition.\n\n**Returns**:\n  - An attribute object that represents the `generic_web_service` sub block.\n', args=[]),
    new(
      uri,
      allowed_ca_certs=null,
      request_headers=null
    ):: std.prune(a={
      allowed_ca_certs: allowed_ca_certs,
      request_headers: request_headers,
      uri: uri,
    }),
  },
  '#new':: d.fn(help="\n`google.dialogflow_cx_webhook.new` injects a new `google_dialogflow_cx_webhook` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_webhook.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_webhook` using the reference:\n\n    $._ref.google_dialogflow_cx_webhook.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_webhook.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `disabled` (`bool`): Indicates whether the webhook is disabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the webhook, unique within the agent.\n  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.\n  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a webhook for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/securitySettings/\u0026lt;Security Settings ID\u0026gt;. When `null`, the `security_settings` field will be omitted from the resulting object.\n  - `timeout` (`string`): Webhook execution timeout. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `generic_web_service` (`list[obj]`): Configuration for a generic web service. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.generic_web_service.new](#fn-dialogflowcxwebhookgenericwebservicenew) constructor.\n  - `service_directory` (`list[obj]`): Configuration for a Service Directory service. When `null`, the `service_directory` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.service_directory.new](#fn-dialogflowcxwebhookservicedirectorynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.timeouts.new](#fn-dialogflowcxwebhooktimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    disabled=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    generic_web_service=null,
    parent=null,
    security_settings=null,
    service_directory=null,
    timeout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_webhook',
    label=resourceLabel,
    attrs=self.newAttrs(
      disabled=disabled,
      display_name=display_name,
      enable_spell_correction=enable_spell_correction,
      enable_stackdriver_logging=enable_stackdriver_logging,
      generic_web_service=generic_web_service,
      parent=parent,
      security_settings=security_settings,
      service_directory=service_directory,
      timeout=timeout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_webhook.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_webhook`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_webhook.new](#fn-dialogflowcxwebhooknew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `disabled` (`bool`): Indicates whether the webhook is disabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the webhook, unique within the agent.\n  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.\n  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a webhook for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.\n  - `timeout` (`string`): Webhook execution timeout. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `generic_web_service` (`list[obj]`): Configuration for a generic web service. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.generic_web_service.new](#fn-dialogflowcxwebhookgenericwebservicenew) constructor.\n  - `service_directory` (`list[obj]`): Configuration for a Service Directory service. When `null`, the `service_directory` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.service_directory.new](#fn-dialogflowcxwebhookservicedirectorynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.timeouts.new](#fn-dialogflowcxwebhooktimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_webhook` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    disabled=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    generic_web_service=null,
    parent=null,
    security_settings=null,
    service_directory=null,
    timeout=null,
    timeouts=null
  ):: std.prune(a={
    disabled: disabled,
    display_name: display_name,
    enable_spell_correction: enable_spell_correction,
    enable_stackdriver_logging: enable_stackdriver_logging,
    generic_web_service: generic_web_service,
    parent: parent,
    security_settings: security_settings,
    service_directory: service_directory,
    timeout: timeout,
    timeouts: timeouts,
  }),
  service_directory:: {
    generic_web_service:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_webhook.service_directory.generic_web_service.new` constructs a new object with attributes and blocks configured for the `generic_web_service`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_ca_certs` (`list`): Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. When `null`, the `allowed_ca_certs` field will be omitted from the resulting object.\n  - `request_headers` (`obj`): The HTTP request headers to send together with webhook requests. When `null`, the `request_headers` field will be omitted from the resulting object.\n  - `uri` (`string`): Whether to use speech adaptation for speech recognition.\n\n**Returns**:\n  - An attribute object that represents the `generic_web_service` sub block.\n', args=[]),
      new(
        uri,
        allowed_ca_certs=null,
        request_headers=null
      ):: std.prune(a={
        allowed_ca_certs: allowed_ca_certs,
        request_headers: request_headers,
        uri: uri,
      }),
    },
    '#new':: d.fn(help='\n`google.dialogflow_cx_webhook.service_directory.new` constructs a new object with attributes and blocks configured for the `service_directory`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service` (`string`): The name of Service Directory service.\n  - `generic_web_service` (`list[obj]`): The name of Service Directory service. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.service_directory.generic_web_service.new](#fn-servicedirectorygenericwebservicenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `service_directory` sub block.\n', args=[]),
    new(
      service,
      generic_web_service=null
    ):: std.prune(a={
      generic_web_service: generic_web_service,
      service: service,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_webhook.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withDisabled':: d.fn(help='`google.dialogflow_cx_webhook.withDisabled` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.dialogflow_cx_webhook.withDisplayName` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnableSpellCorrection':: d.fn(help='`google.dialogflow_cx_webhook.withEnableSpellCorrection` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the enable_spell_correction field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enable_spell_correction` field.\n', args=[]),
  withEnableSpellCorrection(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          enable_spell_correction: value,
        },
      },
    },
  },
  '#withEnableStackdriverLogging':: d.fn(help='`google.dialogflow_cx_webhook.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the enable_stackdriver_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enable_stackdriver_logging` field.\n', args=[]),
  withEnableStackdriverLogging(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          enable_stackdriver_logging: value,
        },
      },
    },
  },
  '#withGenericWebService':: d.fn(help='`google.dialogflow_cx_webhook.withGenericWebService` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the generic_web_service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `generic_web_service` field.\n', args=[]),
  withGenericWebService(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          generic_web_service: value,
        },
      },
    },
  },
  '#withGenericWebServiceMixin':: d.fn(help='`google.dialogflow_cx_webhook.withGenericWebServiceMixin` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the generic_web_service field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dialogflow_cx_webhook.withGenericWebService](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `generic_web_service` field.\n', args=[]),
  withGenericWebServiceMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          generic_web_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.dialogflow_cx_webhook.withParent` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withSecuritySettings':: d.fn(help='`google.dialogflow_cx_webhook.withSecuritySettings` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the security_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `security_settings` field.\n', args=[]),
  withSecuritySettings(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          security_settings: value,
        },
      },
    },
  },
  '#withServiceDirectory':: d.fn(help='`google.dialogflow_cx_webhook.withServiceDirectory` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the service_directory field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `service_directory` field.\n', args=[]),
  withServiceDirectory(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          service_directory: value,
        },
      },
    },
  },
  '#withServiceDirectoryMixin':: d.fn(help='`google.dialogflow_cx_webhook.withServiceDirectoryMixin` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the service_directory field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.dialogflow_cx_webhook.withServiceDirectory](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `service_directory` field.\n', args=[]),
  withServiceDirectoryMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          service_directory+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeout':: d.fn(help='`google.dialogflow_cx_webhook.withTimeout` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the timeout field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeout` field.\n', args=[]),
  withTimeout(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.dialogflow_cx_webhook.withTimeouts` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.dialogflow_cx_webhook.withTimeoutsMixin` constructs a mixin object that can be merged into the `dialogflow_cx_webhook`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.dialogflow_cx_webhook.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
