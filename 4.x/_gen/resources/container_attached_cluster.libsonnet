local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_attached_cluster', url='', help='`container_attached_cluster` represents the `google_container_attached_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  authorization:: {
    '#new':: d.fn(help='\n`google.container_attached_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_users` (`list`): Users that can perform operations as a cluster admin. A managed\nClusterRoleBinding will be created to grant the &#39;cluster-admin&#39; ClusterRole\nto the users. Up to ten admin users can be provided.\n\nFor more info on RBAC, see\nhttps://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_users` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `authorization` sub block.\n', args=[]),
    new(
      admin_users=null
    ):: std.prune(a={
      admin_users: admin_users,
    }),
  },
  fleet:: {
    '#new':: d.fn(help='\n`google.container_attached_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project` (`string`): The number of the Fleet host project where this cluster will be registered.\n\n**Returns**:\n  - An attribute object that represents the `fleet` sub block.\n', args=[]),
    new(
      project
    ):: std.prune(a={
      project: project,
    }),
  },
  logging_config:: {
    component_config:: {
      '#new':: d.fn(help='\n`google.container_attached_cluster.logging_config.component_config.new` constructs a new object with attributes and blocks configured for the `component_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_components` (`list`): The components to be enabled. Possible values: [&#34;SYSTEM_COMPONENTS&#34;, &#34;WORKLOADS&#34;] When `null`, the `enable_components` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `component_config` sub block.\n', args=[]),
      new(
        enable_components=null
      ):: std.prune(a={
        enable_components: enable_components,
      }),
    },
    '#new':: d.fn(help='\n`google.container_attached_cluster.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `component_config` (`list[obj]`): The configuration of the logging components When `null`, the `component_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.logging_config.component_config.new](#fn-logging_configcomponent_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
    new(
      component_config=null
    ):: std.prune(a={
      component_config: component_config,
    }),
  },
  monitoring_config:: {
    managed_prometheus_config:: {
      '#new':: d.fn(help='\n`google.container_attached_cluster.monitoring_config.managed_prometheus_config.new` constructs a new object with attributes and blocks configured for the `managed_prometheus_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Enable Managed Collection. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `managed_prometheus_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.container_attached_cluster.monitoring_config.new` constructs a new object with attributes and blocks configured for the `monitoring_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `managed_prometheus_config` (`list[obj]`): Enable Google Cloud Managed Service for Prometheus in the cluster. When `null`, the `managed_prometheus_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.monitoring_config.managed_prometheus_config.new](#fn-monitoring_configmanaged_prometheus_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `monitoring_config` sub block.\n', args=[]),
    new(
      managed_prometheus_config=null
    ):: std.prune(a={
      managed_prometheus_config: managed_prometheus_config,
    }),
  },
  '#new':: d.fn(help="\n`google.container_attached_cluster.new` injects a new `google_container_attached_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_attached_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_attached_cluster` using the reference:\n\n    $._ref.google_container_attached_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_attached_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same\nrestrictions as Kubernetes annotations. The total size of all keys and\nvalues combined is limited to 256k. Key can have 2 segments: prefix (optional)\nand name (required), separated by a slash (/). Prefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): A human readable description of this attached cluster. Cannot be longer\nthan 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `distribution` (`string`): The Kubernetes distribution of the underlying attached cluster. Supported values:\n\u0026#34;eks\u0026#34;, \u0026#34;aks\u0026#34;.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `platform_version` (`string`): The platform version for the cluster (e.g. \u0026#39;1.23.0-gke.1\u0026#39;).\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.fleet.new](#fn-fleetnew) constructor.\n  - `logging_config` (`list[obj]`): Logging configuration. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.logging_config.new](#fn-logging_confignew) constructor.\n  - `monitoring_config` (`list[obj]`): Monitoring configuration. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.\n  - `oidc_config` (`list[obj]`): OIDC discovery information of the target cluster.\n\nKubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster\nAPI server. This fields indicates how GCP services\nvalidate KSA tokens in order to allow system workloads (such as GKE Connect\nand telemetry agents) to authenticate back to GCP.\n\nBoth clusters with public and private issuer URLs are supported.\nClusters with public issuers only need to specify the \u0026#39;issuer_url\u0026#39; field\nwhile clusters with private issuers need to provide both\n\u0026#39;issuer_url\u0026#39; and \u0026#39;jwks\u0026#39;. When `null`, the `oidc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.oidc_config.new](#fn-oidc_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    distribution,
    location,
    name,
    platform_version,
    annotations=null,
    authorization=null,
    description=null,
    fleet=null,
    logging_config=null,
    monitoring_config=null,
    oidc_config=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_attached_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      authorization=authorization,
      description=description,
      distribution=distribution,
      fleet=fleet,
      location=location,
      logging_config=logging_config,
      monitoring_config=monitoring_config,
      name=name,
      oidc_config=oidc_config,
      platform_version=platform_version,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_attached_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_attached_cluster`\nTerraform resource.\n\nUnlike [google.container_attached_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same\nrestrictions as Kubernetes annotations. The total size of all keys and\nvalues combined is limited to 256k. Key can have 2 segments: prefix (optional)\nand name (required), separated by a slash (/). Prefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): A human readable description of this attached cluster. Cannot be longer\nthan 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.\n  - `distribution` (`string`): The Kubernetes distribution of the underlying attached cluster. Supported values:\n&#34;eks&#34;, &#34;aks&#34;.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The name of this resource.\n  - `platform_version` (`string`): The platform version for the cluster (e.g. &#39;1.23.0-gke.1&#39;).\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.fleet.new](#fn-fleetnew) constructor.\n  - `logging_config` (`list[obj]`): Logging configuration. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.logging_config.new](#fn-logging_confignew) constructor.\n  - `monitoring_config` (`list[obj]`): Monitoring configuration. When `null`, the `monitoring_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.monitoring_config.new](#fn-monitoring_confignew) constructor.\n  - `oidc_config` (`list[obj]`): OIDC discovery information of the target cluster.\n\nKubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster\nAPI server. This fields indicates how GCP services\nvalidate KSA tokens in order to allow system workloads (such as GKE Connect\nand telemetry agents) to authenticate back to GCP.\n\nBoth clusters with public and private issuer URLs are supported.\nClusters with public issuers only need to specify the &#39;issuer_url&#39; field\nwhile clusters with private issuers need to provide both\n&#39;issuer_url&#39; and &#39;jwks&#39;. When `null`, the `oidc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.oidc_config.new](#fn-oidc_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_attached_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_attached_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    distribution,
    location,
    name,
    platform_version,
    annotations=null,
    authorization=null,
    description=null,
    fleet=null,
    logging_config=null,
    monitoring_config=null,
    oidc_config=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    authorization: authorization,
    description: description,
    distribution: distribution,
    fleet: fleet,
    location: location,
    logging_config: logging_config,
    monitoring_config: monitoring_config,
    name: name,
    oidc_config: oidc_config,
    platform_version: platform_version,
    project: project,
    timeouts: timeouts,
  }),
  oidc_config:: {
    '#new':: d.fn(help='\n`google.container_attached_cluster.oidc_config.new` constructs a new object with attributes and blocks configured for the `oidc_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `issuer_url` (`string`): A JSON Web Token (JWT) issuer URI. &#39;issuer&#39; must start with &#39;https://&#39;\n  - `jwks` (`string`): OIDC verification keys in JWKS format (RFC 7517). When `null`, the `jwks` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `oidc_config` sub block.\n', args=[]),
    new(
      issuer_url,
      jwks=null
    ):: std.prune(a={
      issuer_url: issuer_url,
      jwks: jwks,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_attached_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAuthorization':: d.fn(help='`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorization(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  '#withAuthorizationMixin':: d.fn(help='`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDistribution':: d.fn(help='`google.string.withDistribution` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the distribution field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `distribution` field.\n', args=[]),
  withDistribution(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          distribution: value,
        },
      },
    },
  },
  '#withFleet':: d.fn(help='`google.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFleetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet` field.\n', args=[]),
  withFleet(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          fleet: value,
        },
      },
    },
  },
  '#withFleetMixin':: d.fn(help='`google.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFleet](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet` field.\n', args=[]),
  withFleetMixin(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          fleet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withLoggingConfig':: d.fn(help='`google.list[obj].withLoggingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the logging_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLoggingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `logging_config` field.\n', args=[]),
  withLoggingConfig(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          logging_config: value,
        },
      },
    },
  },
  '#withLoggingConfigMixin':: d.fn(help='`google.list[obj].withLoggingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the logging_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLoggingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `logging_config` field.\n', args=[]),
  withLoggingConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          logging_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMonitoringConfig':: d.fn(help='`google.list[obj].withMonitoringConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the monitoring_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMonitoringConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.\n', args=[]),
  withMonitoringConfig(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          monitoring_config: value,
        },
      },
    },
  },
  '#withMonitoringConfigMixin':: d.fn(help='`google.list[obj].withMonitoringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the monitoring_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMonitoringConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `monitoring_config` field.\n', args=[]),
  withMonitoringConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          monitoring_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOidcConfig':: d.fn(help='`google.list[obj].withOidcConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oidc_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOidcConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oidc_config` field.\n', args=[]),
  withOidcConfig(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          oidc_config: value,
        },
      },
    },
  },
  '#withOidcConfigMixin':: d.fn(help='`google.list[obj].withOidcConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the oidc_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOidcConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `oidc_config` field.\n', args=[]),
  withOidcConfigMixin(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          oidc_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPlatformVersion':: d.fn(help='`google.string.withPlatformVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the platform_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `platform_version` field.\n', args=[]),
  withPlatformVersion(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          platform_version: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_container_attached_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
