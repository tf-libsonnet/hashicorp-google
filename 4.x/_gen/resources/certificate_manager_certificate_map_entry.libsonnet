local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='certificate_manager_certificate_map_entry', url='', help='`certificate_manager_certificate_map_entry` represents the `google_certificate_manager_certificate_map_entry` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.certificate_manager_certificate_map_entry.new` injects a new `google_certificate_manager_certificate_map_entry` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.certificate_manager_certificate_map_entry.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.certificate_manager_certificate_map_entry` using the reference:\n\n    $._ref.google_certificate_manager_certificate_map_entry.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_certificate_manager_certificate_map_entry.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `certificates` (`list`): A set of Certificates defines for the given hostname.\nThere can be defined up to fifteen certificates in each Certificate Map Entry.\nEach certificate must match pattern projects/*/locations/*/certificates/*.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `hostname` (`string`): A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)\nfor a set of hostnames with common suffix. Used as Server Name Indication (SNI) for\nselecting a proper certificate. When `null`, the `hostname` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of labels associated with a Certificate Map Entry.\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `map` (`string`): A map entry that is inputted into the cetrificate map\n  - `matcher` (`string`): A predefined matcher for particular cases, other than SNI selection When `null`, the `matcher` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the Certificate Map Entry. Certificate Map Entry \nnames must be unique globally and match pattern \n\u0026#39;projects/*/locations/*/certificateMaps/*/certificateMapEntries/*\u0026#39;\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_map_entry.timeouts.new](#fn-certificatemanagercertificatemapentrytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    certificates,
    map,
    name,
    description=null,
    hostname=null,
    labels=null,
    matcher=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_certificate_manager_certificate_map_entry',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificates=certificates,
      description=description,
      hostname=hostname,
      labels=labels,
      map=map,
      matcher=matcher,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.certificate_manager_certificate_map_entry.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate_map_entry`\nTerraform resource.\n\nUnlike [google.certificate_manager_certificate_map_entry.new](#fn-certificatemanagercertificatemapentrynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificates` (`list`): A set of Certificates defines for the given hostname.\nThere can be defined up to fifteen certificates in each Certificate Map Entry.\nEach certificate must match pattern projects/*/locations/*/certificates/*.\n  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `hostname` (`string`): A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression (*.example.com)\nfor a set of hostnames with common suffix. Used as Server Name Indication (SNI) for\nselecting a proper certificate. When `null`, the `hostname` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of labels associated with a Certificate Map Entry.\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `map` (`string`): A map entry that is inputted into the cetrificate map\n  - `matcher` (`string`): A predefined matcher for particular cases, other than SNI selection When `null`, the `matcher` field will be omitted from the resulting object.\n  - `name` (`string`): A user-defined name of the Certificate Map Entry. Certificate Map Entry \nnames must be unique globally and match pattern \n&#39;projects/*/locations/*/certificateMaps/*/certificateMapEntries/*&#39;\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate_map_entry.timeouts.new](#fn-certificatemanagercertificatemapentrytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate_map_entry` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    certificates,
    map,
    name,
    description=null,
    hostname=null,
    labels=null,
    matcher=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    certificates: certificates,
    description: description,
    hostname: hostname,
    labels: labels,
    map: map,
    matcher: matcher,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.certificate_manager_certificate_map_entry.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCertificates':: d.fn(help='`google.certificate_manager_certificate_map_entry.withCertificates` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the certificates field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `certificates` field.\n', args=[]),
  withCertificates(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          certificates: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.certificate_manager_certificate_map_entry.withDescription` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withHostname':: d.fn(help='`google.certificate_manager_certificate_map_entry.withHostname` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the hostname field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `hostname` field.\n', args=[]),
  withHostname(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          hostname: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.certificate_manager_certificate_map_entry.withLabels` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withMap':: d.fn(help='`google.certificate_manager_certificate_map_entry.withMap` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the map field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `map` field.\n', args=[]),
  withMap(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          map: value,
        },
      },
    },
  },
  '#withMatcher':: d.fn(help='`google.certificate_manager_certificate_map_entry.withMatcher` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the matcher field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `matcher` field.\n', args=[]),
  withMatcher(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          matcher: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.certificate_manager_certificate_map_entry.withName` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.certificate_manager_certificate_map_entry.withProject` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.certificate_manager_certificate_map_entry.withTimeouts` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.certificate_manager_certificate_map_entry.withTimeoutsMixin` constructs a mixin object that can be merged into the `certificate_manager_certificate_map_entry`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.certificate_manager_certificate_map_entry.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_certificate_manager_certificate_map_entry+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
