local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='edgecontainer_cluster', url='', help='`edgecontainer_cluster` represents the `google_edgecontainer_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  authorization:: {
    admin_users:: {
      '#new':: d.fn(help='\n`google.edgecontainer_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): An active Google username.\n\n**Returns**:\n  - An attribute object that represents the `admin_users` sub block.\n', args=[]),
      new(
        username
      ):: std.prune(a={
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_users` (`list[obj]`): User that will be granted the cluster-admin role on the cluster, providing\nfull access to the cluster. Currently, this is a singular field, but will\nbe expanded to allow multiple admins in the future. When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `authorization` sub block.\n', args=[]),
    new(
      admin_users=null
    ):: std.prune(a={
      admin_users: admin_users,
    }),
  },
  control_plane:: {
    'local':: {
      '#new':: d.fn(help='\n`google.edgecontainer_cluster.control_plane.local.new` constructs a new object with attributes and blocks configured for the `local`\nTerraform sub block.\n\n\n\n**Args**:\n  - `machine_filter` (`string`): Only machines matching this filter will be allowed to host control\nplane nodes. The filtering language accepts strings like &#34;name=&lt;name&gt;&#34;,\nand is documented here: [AIP-160](https://google.aip.dev/160). When `null`, the `machine_filter` field will be omitted from the resulting object.\n  - `node_count` (`number`): The number of nodes to serve as replicas of the Control Plane.\nOnly 1 and 3 are supported. When `null`, the `node_count` field will be omitted from the resulting object.\n  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zones where this node pool\nwill be created. For example: &#39;us-central1-edge-customer-a&#39;. When `null`, the `node_location` field will be omitted from the resulting object.\n  - `shared_deployment_policy` (`string`): Policy configuration about how user applications are deployed. Possible values: [&#34;SHARED_DEPLOYMENT_POLICY_UNSPECIFIED&#34;, &#34;ALLOWED&#34;, &#34;DISALLOWED&#34;] When `null`, the `shared_deployment_policy` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `local` sub block.\n', args=[]),
      new(
        machine_filter=null,
        node_count=null,
        node_location=null,
        shared_deployment_policy=null
      ):: std.prune(a={
        machine_filter: machine_filter,
        node_count: node_count,
        node_location: node_location,
        shared_deployment_policy: shared_deployment_policy,
      }),
    },
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`\nTerraform sub block.\n\n\n\n**Args**:\n  - `local_` (`list[obj]`): Local control plane configuration. When `null`, the `local_` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.local_.new](#fn-control_planelocal_new) constructor.\n  - `remote` (`list[obj]`): Remote control plane configuration. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.remote.new](#fn-control_planeremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane` sub block.\n', args=[]),
    new(
      local_=null,
      remote=null
    ):: std.prune(a={
      'local': local_,
      remote: remote,
    }),
    remote:: {
      '#new':: d.fn(help='\n`google.edgecontainer_cluster.control_plane.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zones where this node pool\nwill be created. For example: &#39;us-central1-edge-customer-a&#39;. When `null`, the `node_location` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
      new(
        node_location=null
      ):: std.prune(a={
        node_location: node_location,
      }),
    },
  },
  control_plane_encryption:: {
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.control_plane_encryption.new` constructs a new object with attributes and blocks configured for the `control_plane_encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key` (`string`): The Cloud KMS CryptoKey e.g.\nprojects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}\nto use for protecting control plane disks. If not specified, a\nGoogle-managed key will be used instead. When `null`, the `kms_key` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `control_plane_encryption` sub block.\n', args=[]),
    new(
      kms_key=null
    ):: std.prune(a={
      kms_key: kms_key,
    }),
  },
  fleet:: {
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project` (`string`): The name of the Fleet host project where this cluster will be registered.\nProject names are formatted as\n&#39;projects/&lt;project-number&gt;&#39;.\n\n**Returns**:\n  - An attribute object that represents the `fleet` sub block.\n', args=[]),
    new(
      project
    ):: std.prune(a={
      project: project,
    }),
  },
  maintenance_policy:: {
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.maintenance_policy.new` constructs a new object with attributes and blocks configured for the `maintenance_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `window` (`list[obj]`): Specifies the maintenance window in which maintenance may be performed. When `null`, the `window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.window.new](#fn-maintenance_policywindownew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_policy` sub block.\n', args=[]),
    new(
      window=null
    ):: std.prune(a={
      window: window,
    }),
    window:: {
      '#new':: d.fn(help='\n`google.edgecontainer_cluster.maintenance_policy.window.new` constructs a new object with attributes and blocks configured for the `window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `recurring_window` (`list[obj]`): Represents an arbitrary window of time that recurs. When `null`, the `recurring_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.window.recurring_window.new](#fn-maintenance_policymaintenance_policyrecurring_windownew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `window` sub block.\n', args=[]),
      new(
        recurring_window=null
      ):: std.prune(a={
        recurring_window: recurring_window,
      }),
      recurring_window:: {
        '#new':: d.fn(help='\n`google.edgecontainer_cluster.maintenance_policy.window.recurring_window.new` constructs a new object with attributes and blocks configured for the `recurring_window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `recurrence` (`string`): An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how\nthis window recurs. They go on for the span of time between the start and\nend time. When `null`, the `recurrence` field will be omitted from the resulting object.\n  - `window` (`list[obj]`): Represents an arbitrary window of time. When `null`, the `window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.window.recurring_window.window.new](#fn-maintenance_policymaintenance_policywindowwindownew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `recurring_window` sub block.\n', args=[]),
        new(
          recurrence=null,
          window=null
        ):: std.prune(a={
          recurrence: recurrence,
          window: window,
        }),
        window:: {
          '#new':: d.fn(help='\n`google.edgecontainer_cluster.maintenance_policy.window.recurring_window.window.new` constructs a new object with attributes and blocks configured for the `window`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_time` (`string`): The time that the window ends. The end time must take place after the\nstart time. When `null`, the `end_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): The time that the window first starts. When `null`, the `start_time` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `window` sub block.\n', args=[]),
          new(
            end_time=null,
            start_time=null
          ):: std.prune(a={
            end_time: end_time,
            start_time: start_time,
          }),
        },
      },
    },
  },
  networking:: {
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.networking.new` constructs a new object with attributes and blocks configured for the `networking`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_ipv4_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these\nblocks. Only a single block is supported. This field cannot be changed\nafter creation.\n  - `cluster_ipv6_cidr_blocks` (`list`): If specified, dual stack mode is enabled and all pods in the cluster are\nassigned an IPv6 address from these blocks alongside from an IPv4\naddress. Only a single block is supported. This field cannot be changed\nafter creation. When `null`, the `cluster_ipv6_cidr_blocks` field will be omitted from the resulting object.\n  - `services_ipv4_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address from these\nblocks. Only a single block is supported. This field cannot be changed\nafter creation.\n  - `services_ipv6_cidr_blocks` (`list`): If specified, dual stack mode is enabled and all services in the cluster are\nassigned an IPv6 address from these blocks alongside from an IPv4\naddress. Only a single block is supported. This field cannot be changed\nafter creation. When `null`, the `services_ipv6_cidr_blocks` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `networking` sub block.\n', args=[]),
    new(
      cluster_ipv4_cidr_blocks,
      services_ipv4_cidr_blocks,
      cluster_ipv6_cidr_blocks=null,
      services_ipv6_cidr_blocks=null
    ):: std.prune(a={
      cluster_ipv4_cidr_blocks: cluster_ipv4_cidr_blocks,
      cluster_ipv6_cidr_blocks: cluster_ipv6_cidr_blocks,
      services_ipv4_cidr_blocks: services_ipv4_cidr_blocks,
      services_ipv6_cidr_blocks: services_ipv6_cidr_blocks,
    }),
  },
  '#new':: d.fn(help="\n`google.edgecontainer_cluster.new` injects a new `google_edgecontainer_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.edgecontainer_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.edgecontainer_cluster` using the reference:\n\n    $._ref.google_edgecontainer_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_edgecontainer_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node used if a maximum value is not\nspecified explicitly for a node pool in this cluster. If unspecified, the\nKubernetes default value will be used. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.\n  - `external_load_balancer_ipv4_address_pools` (`list`): Address pools for cluster data plane external load balancing. When `null`, the `external_load_balancer_ipv4_address_pools` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the edgecloud cluster.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The GDCE cluster name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `release_channel` (`string`): The release channel a cluster is subscribed to. Possible values: [\u0026#34;RELEASE_CHANNEL_UNSPECIFIED\u0026#34;, \u0026#34;NONE\u0026#34;, \u0026#34;REGULAR\u0026#34;] When `null`, the `release_channel` field will be omitted from the resulting object.\n  - `target_version` (`string`): The target cluster version. For example: \u0026#34;1.5.0\u0026#34;. When `null`, the `target_version` field will be omitted from the resulting object.\n  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GEC. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `control_plane` (`list[obj]`): The configuration of the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.new](#fn-control_planenew) constructor.\n  - `control_plane_encryption` (`list[obj]`): Remote control plane disk encryption options. This field is only used when\nenabling CMEK support. When `null`, the `control_plane_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane_encryption.new](#fn-control_plane_encryptionnew) constructor.\n  - `fleet` (`list[obj]`): Fleet related configuration.\nFleets are a Google Cloud concept for logically organizing clusters,\nletting you use and manage multi-cluster capabilities and apply\nconsistent policies across your systems. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.fleet.new](#fn-fleetnew) constructor.\n  - `maintenance_policy` (`list[obj]`): Cluster-wide maintenance policy configuration. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `networking` (`list[obj]`): Fleet related configuration.\nFleets are a Google Cloud concept for logically organizing clusters,\nletting you use and manage multi-cluster capabilities and apply\nconsistent policies across your systems. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.networking.new](#fn-networkingnew) constructor.\n  - `system_addons_config` (`list[obj]`): Config that customers are allowed to define for GDCE system add-ons. When `null`, the `system_addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.system_addons_config.new](#fn-system_addons_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    authorization=null,
    control_plane=null,
    control_plane_encryption=null,
    default_max_pods_per_node=null,
    external_load_balancer_ipv4_address_pools=null,
    fleet=null,
    labels=null,
    maintenance_policy=null,
    networking=null,
    project=null,
    release_channel=null,
    system_addons_config=null,
    target_version=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_edgecontainer_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorization=authorization,
      control_plane=control_plane,
      control_plane_encryption=control_plane_encryption,
      default_max_pods_per_node=default_max_pods_per_node,
      external_load_balancer_ipv4_address_pools=external_load_balancer_ipv4_address_pools,
      fleet=fleet,
      labels=labels,
      location=location,
      maintenance_policy=maintenance_policy,
      name=name,
      networking=networking,
      project=project,
      release_channel=release_channel,
      system_addons_config=system_addons_config,
      target_version=target_version,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.edgecontainer_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `edgecontainer_cluster`\nTerraform resource.\n\nUnlike [google.edgecontainer_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `default_max_pods_per_node` (`number`): The default maximum number of pods per node used if a maximum value is not\nspecified explicitly for a node pool in this cluster. If unspecified, the\nKubernetes default value will be used. When `null`, the `default_max_pods_per_node` field will be omitted from the resulting object.\n  - `external_load_balancer_ipv4_address_pools` (`list`): Address pools for cluster data plane external load balancing. When `null`, the `external_load_balancer_ipv4_address_pools` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the edgecloud cluster.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The GDCE cluster name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `release_channel` (`string`): The release channel a cluster is subscribed to. Possible values: [&#34;RELEASE_CHANNEL_UNSPECIFIED&#34;, &#34;NONE&#34;, &#34;REGULAR&#34;] When `null`, the `release_channel` field will be omitted from the resulting object.\n  - `target_version` (`string`): The target cluster version. For example: &#34;1.5.0&#34;. When `null`, the `target_version` field will be omitted from the resulting object.\n  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GEC. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `control_plane` (`list[obj]`): The configuration of the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane.new](#fn-control_planenew) constructor.\n  - `control_plane_encryption` (`list[obj]`): Remote control plane disk encryption options. This field is only used when\nenabling CMEK support. When `null`, the `control_plane_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.control_plane_encryption.new](#fn-control_plane_encryptionnew) constructor.\n  - `fleet` (`list[obj]`): Fleet related configuration.\nFleets are a Google Cloud concept for logically organizing clusters,\nletting you use and manage multi-cluster capabilities and apply\nconsistent policies across your systems. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.fleet.new](#fn-fleetnew) constructor.\n  - `maintenance_policy` (`list[obj]`): Cluster-wide maintenance policy configuration. When `null`, the `maintenance_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.maintenance_policy.new](#fn-maintenance_policynew) constructor.\n  - `networking` (`list[obj]`): Fleet related configuration.\nFleets are a Google Cloud concept for logically organizing clusters,\nletting you use and manage multi-cluster capabilities and apply\nconsistent policies across your systems. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.networking.new](#fn-networkingnew) constructor.\n  - `system_addons_config` (`list[obj]`): Config that customers are allowed to define for GDCE system add-ons. When `null`, the `system_addons_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.system_addons_config.new](#fn-system_addons_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgecontainer_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    authorization=null,
    control_plane=null,
    control_plane_encryption=null,
    default_max_pods_per_node=null,
    external_load_balancer_ipv4_address_pools=null,
    fleet=null,
    labels=null,
    maintenance_policy=null,
    networking=null,
    project=null,
    release_channel=null,
    system_addons_config=null,
    target_version=null,
    timeouts=null
  ):: std.prune(a={
    authorization: authorization,
    control_plane: control_plane,
    control_plane_encryption: control_plane_encryption,
    default_max_pods_per_node: default_max_pods_per_node,
    external_load_balancer_ipv4_address_pools: external_load_balancer_ipv4_address_pools,
    fleet: fleet,
    labels: labels,
    location: location,
    maintenance_policy: maintenance_policy,
    name: name,
    networking: networking,
    project: project,
    release_channel: release_channel,
    system_addons_config: system_addons_config,
    target_version: target_version,
    timeouts: timeouts,
  }),
  system_addons_config:: {
    ingress:: {
      '#new':: d.fn(help='\n`google.edgecontainer_cluster.system_addons_config.ingress.new` constructs a new object with attributes and blocks configured for the `ingress`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disabled` (`bool`): Whether Ingress is disabled. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `ipv4_vip` (`string`): Ingress VIP. When `null`, the `ipv4_vip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ingress` sub block.\n', args=[]),
      new(
        disabled=null,
        ipv4_vip=null
      ):: std.prune(a={
        disabled: disabled,
        ipv4_vip: ipv4_vip,
      }),
    },
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.system_addons_config.new` constructs a new object with attributes and blocks configured for the `system_addons_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ingress` (`list[obj]`): Config for the Ingress add-on which allows customers to create an Ingress\nobject to manage external access to the servers in a cluster. The add-on\nconsists of istiod and istio-ingress. When `null`, the `ingress` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_cluster.system_addons_config.ingress.new](#fn-system_addons_configingressnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `system_addons_config` sub block.\n', args=[]),
    new(
      ingress=null
    ):: std.prune(a={
      ingress: ingress,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.edgecontainer_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAuthorization':: d.fn(help='`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorization(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  '#withAuthorizationMixin':: d.fn(help='`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withControlPlane':: d.fn(help='`google.list[obj].withControlPlane` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withControlPlaneMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlane(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          control_plane: value,
        },
      },
    },
  },
  '#withControlPlaneEncryption':: d.fn(help='`google.list[obj].withControlPlaneEncryption` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane_encryption field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withControlPlaneEncryptionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane_encryption` field.\n', args=[]),
  withControlPlaneEncryption(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          control_plane_encryption: value,
        },
      },
    },
  },
  '#withControlPlaneEncryptionMixin':: d.fn(help='`google.list[obj].withControlPlaneEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane_encryption field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlaneEncryption](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane_encryption` field.\n', args=[]),
  withControlPlaneEncryptionMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          control_plane_encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withControlPlaneMixin':: d.fn(help='`google.list[obj].withControlPlaneMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlane](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlaneMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          control_plane+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDefaultMaxPodsPerNode':: d.fn(help='`google.number.withDefaultMaxPodsPerNode` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the default_max_pods_per_node field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `default_max_pods_per_node` field.\n', args=[]),
  withDefaultMaxPodsPerNode(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          default_max_pods_per_node: value,
        },
      },
    },
  },
  '#withExternalLoadBalancerIpv4AddressPools':: d.fn(help='`google.list.withExternalLoadBalancerIpv4AddressPools` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the external_load_balancer_ipv4_address_pools field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `external_load_balancer_ipv4_address_pools` field.\n', args=[]),
  withExternalLoadBalancerIpv4AddressPools(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          external_load_balancer_ipv4_address_pools: value,
        },
      },
    },
  },
  '#withFleet':: d.fn(help='`google.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFleetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet` field.\n', args=[]),
  withFleet(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          fleet: value,
        },
      },
    },
  },
  '#withFleetMixin':: d.fn(help='`google.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFleet](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet` field.\n', args=[]),
  withFleetMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          fleet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMaintenancePolicy':: d.fn(help='`google.list[obj].withMaintenancePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenancePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicy(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  '#withMaintenancePolicyMixin':: d.fn(help='`google.list[obj].withMaintenancePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenancePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_policy` field.\n', args=[]),
  withMaintenancePolicyMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworking':: d.fn(help='`google.list[obj].withNetworking` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networking field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networking` field.\n', args=[]),
  withNetworking(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          networking: value,
        },
      },
    },
  },
  '#withNetworkingMixin':: d.fn(help='`google.list[obj].withNetworkingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the networking field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworking](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `networking` field.\n', args=[]),
  withNetworkingMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          networking+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReleaseChannel':: d.fn(help='`google.string.withReleaseChannel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the release_channel field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `release_channel` field.\n', args=[]),
  withReleaseChannel(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          release_channel: value,
        },
      },
    },
  },
  '#withSystemAddonsConfig':: d.fn(help='`google.list[obj].withSystemAddonsConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the system_addons_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSystemAddonsConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `system_addons_config` field.\n', args=[]),
  withSystemAddonsConfig(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          system_addons_config: value,
        },
      },
    },
  },
  '#withSystemAddonsConfigMixin':: d.fn(help='`google.list[obj].withSystemAddonsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the system_addons_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSystemAddonsConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `system_addons_config` field.\n', args=[]),
  withSystemAddonsConfigMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          system_addons_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTargetVersion':: d.fn(help='`google.string.withTargetVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_version` field.\n', args=[]),
  withTargetVersion(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          target_version: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
