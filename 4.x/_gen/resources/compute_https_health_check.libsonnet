local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_https_health_check', url='', help='`compute_https_health_check` represents the `google_compute_https_health_check` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_https_health_check.new` injects a new `google_compute_https_health_check` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_https_health_check.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_https_health_check` using the reference:\n\n    $._ref.google_compute_https_health_check.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_https_health_check.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `check_interval_sec` (`number`): How often (in seconds) to send a health check. The default value is 5\nseconds. When `null`, the `check_interval_sec` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `healthy_threshold` (`number`): A so-far unhealthy instance will be marked healthy after this many\nconsecutive successes. The default value is 2. When `null`, the `healthy_threshold` field will be omitted from the resulting object.\n  - `host` (`string`): The value of the host header in the HTTPS health check request. If\nleft empty (default value), the public IP on behalf of which this\nhealth check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `port` (`number`): The TCP port number for the HTTPS health check request.\nThe default value is 443. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `request_path` (`string`): The request path of the HTTPS health check request.\nThe default value is /. When `null`, the `request_path` field will be omitted from the resulting object.\n  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.\nThe default value is 5 seconds.  It is invalid for timeoutSec to have\ngreater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.\n  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many\nconsecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_https_health_check.timeouts.new](#fn-computehttpshealthchecktimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    check_interval_sec=null,
    description=null,
    healthy_threshold=null,
    host=null,
    port=null,
    project=null,
    request_path=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_https_health_check',
    label=resourceLabel,
    attrs=self.newAttrs(
      check_interval_sec=check_interval_sec,
      description=description,
      healthy_threshold=healthy_threshold,
      host=host,
      name=name,
      port=port,
      project=project,
      request_path=request_path,
      timeout_sec=timeout_sec,
      timeouts=timeouts,
      unhealthy_threshold=unhealthy_threshold
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_https_health_check.newAttrs` constructs a new object with attributes and blocks configured for the `compute_https_health_check`\nTerraform resource.\n\nUnlike [google.compute_https_health_check.new](#fn-computehttpshealthchecknew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `check_interval_sec` (`number`): How often (in seconds) to send a health check. The default value is 5\nseconds. When `null`, the `check_interval_sec` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. Provide this property when\nyou create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `healthy_threshold` (`number`): A so-far unhealthy instance will be marked healthy after this many\nconsecutive successes. The default value is 2. When `null`, the `healthy_threshold` field will be omitted from the resulting object.\n  - `host` (`string`): The value of the host header in the HTTPS health check request. If\nleft empty (default value), the public IP on behalf of which this\nhealth check is performed will be used. When `null`, the `host` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash.\n  - `port` (`number`): The TCP port number for the HTTPS health check request.\nThe default value is 443. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `request_path` (`string`): The request path of the HTTPS health check request.\nThe default value is /. When `null`, the `request_path` field will be omitted from the resulting object.\n  - `timeout_sec` (`number`): How long (in seconds) to wait before claiming failure.\nThe default value is 5 seconds.  It is invalid for timeoutSec to have\ngreater value than checkIntervalSec. When `null`, the `timeout_sec` field will be omitted from the resulting object.\n  - `unhealthy_threshold` (`number`): A so-far healthy instance will be marked unhealthy after this many\nconsecutive failures. The default value is 2. When `null`, the `unhealthy_threshold` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_https_health_check.timeouts.new](#fn-computehttpshealthchecktimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_https_health_check` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    check_interval_sec=null,
    description=null,
    healthy_threshold=null,
    host=null,
    port=null,
    project=null,
    request_path=null,
    timeout_sec=null,
    timeouts=null,
    unhealthy_threshold=null
  ):: std.prune(a={
    check_interval_sec: check_interval_sec,
    description: description,
    healthy_threshold: healthy_threshold,
    host: host,
    name: name,
    port: port,
    project: project,
    request_path: request_path,
    timeout_sec: timeout_sec,
    timeouts: timeouts,
    unhealthy_threshold: unhealthy_threshold,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_https_health_check.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCheckIntervalSec':: d.fn(help='`google.number.withCheckIntervalSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the check_interval_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `check_interval_sec` field.\n', args=[]),
  withCheckIntervalSec(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          check_interval_sec: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withHealthyThreshold':: d.fn(help='`google.number.withHealthyThreshold` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the healthy_threshold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `healthy_threshold` field.\n', args=[]),
  withHealthyThreshold(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          healthy_threshold: value,
        },
      },
    },
  },
  '#withHost':: d.fn(help='`google.string.withHost` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host` field.\n', args=[]),
  withHost(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRequestPath':: d.fn(help='`google.string.withRequestPath` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the request_path field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `request_path` field.\n', args=[]),
  withRequestPath(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          request_path: value,
        },
      },
    },
  },
  '#withTimeoutSec':: d.fn(help='`google.number.withTimeoutSec` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the timeout_sec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `timeout_sec` field.\n', args=[]),
  withTimeoutSec(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          timeout_sec: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUnhealthyThreshold':: d.fn(help='`google.number.withUnhealthyThreshold` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the unhealthy_threshold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `unhealthy_threshold` field.\n', args=[]),
  withUnhealthyThreshold(resourceLabel, value): {
    resource+: {
      google_compute_https_health_check+: {
        [resourceLabel]+: {
          unhealthy_threshold: value,
        },
      },
    },
  },
}
