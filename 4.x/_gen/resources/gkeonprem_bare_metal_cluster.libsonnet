local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gkeonprem_bare_metal_cluster', url='', help='`gkeonprem_bare_metal_cluster` represents the `google_gkeonprem_bare_metal_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  binary_authorization:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.binary_authorization.new` constructs a new object with attributes and blocks configured for the `binary_authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `evaluation_mode` (`string`): Mode of operation for binauthz policy evaluation. If unspecified,\ndefaults to DISABLED. Possible values: [&#34;DISABLED&#34;, &#34;PROJECT_SINGLETON_POLICY_ENFORCE&#34;] When `null`, the `evaluation_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `binary_authorization` sub block.\n', args=[]),
    new(
      evaluation_mode=null
    ):: std.prune(a={
      evaluation_mode: evaluation_mode,
    }),
  },
  cluster_operations:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.cluster_operations.new` constructs a new object with attributes and blocks configured for the `cluster_operations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_application_logs` (`bool`): Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics). When `null`, the `enable_application_logs` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cluster_operations` sub block.\n', args=[]),
    new(
      enable_application_logs=null
    ):: std.prune(a={
      enable_application_logs: enable_application_logs,
    }),
  },
  control_plane:: {
    api_server_args:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.control_plane.api_server_args.new` constructs a new object with attributes and blocks configured for the `api_server_args`\nTerraform sub block.\n\n\n\n**Args**:\n  - `argument` (`string`): The argument name as it appears on the API Server command line please make sure to remove the leading dashes.\n  - `value` (`string`): The value of the arg as it will be passed to the API Server command line.\n\n**Returns**:\n  - An attribute object that represents the `api_server_args` sub block.\n', args=[]),
      new(
        argument,
        value
      ):: std.prune(a={
        argument: argument,
        value: value,
      }),
    },
    control_plane_node_pool_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.new` constructs a new object with attributes and blocks configured for the `control_plane_node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool_config` (`list[obj]`): The generic configuration for a node pool running the control plane. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.node_pool_config.new](#fn-control_planecontrol_planenode_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane_node_pool_config` sub block.\n', args=[]),
      new(
        node_pool_config=null
      ):: std.prune(a={
        node_pool_config: node_pool_config,
      }),
      node_pool_config:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `operating_system` (`string`): Specifies the nodes operating system (default: LINUX). When `null`, the `operating_system` field will be omitted from the resulting object.\n  - `node_configs` (`list[obj]`): The list of machine addresses in the Bare Metal Node Pool. When `null`, the `node_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.node_pool_config.node_configs.new](#fn-control_planecontrol_planecontrol_plane_node_pool_confignode_configsnew) constructor.\n  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.node_pool_config.taints.new](#fn-control_planecontrol_planecontrol_plane_node_pool_configtaintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_config` sub block.\n', args=[]),
        new(
          labels=null,
          node_configs=null,
          operating_system=null,
          taints=null
        ):: std.prune(a={
          labels: labels,
          node_configs: node_configs,
          operating_system: operating_system,
          taints: taints,
        }),
        node_configs:: {
          '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.node_pool_config.node_configs.new` constructs a new object with attributes and blocks configured for the `node_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `node_ip` (`string`): The default IPv4 address for SSH access and Kubernetes node.\nExample: 192.168.0.1 When `null`, the `node_ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_configs` sub block.\n', args=[]),
          new(
            labels=null,
            node_ip=null
          ):: std.prune(a={
            labels: labels,
            node_ip: node_ip,
          }),
        },
        taints:: {
          '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.node_pool_config.taints.new` constructs a new object with attributes and blocks configured for the `taints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `effect` (`string`): Specifies the nodes operating system (default: LINUX). Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.\n  - `key` (`string`): Key associated with the effect. When `null`, the `key` field will be omitted from the resulting object.\n  - `value` (`string`): Value associated with the effect. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `taints` sub block.\n', args=[]),
          new(
            effect=null,
            key=null,
            value=null
          ):: std.prune(a={
            effect: effect,
            key: key,
            value: value,
          }),
        },
      },
    },
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`\nTerraform sub block.\n\n\n\n**Args**:\n  - `api_server_args` (`list[obj]`): Customizes the default API server args. Only a subset of\ncustomized flags are supported. Please refer to the API server\ndocumentation below to know the exact format:\nhttps://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/ When `null`, the `api_server_args` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.api_server_args.new](#fn-control_planeapi_server_argsnew) constructor.\n  - `control_plane_node_pool_config` (`list[obj]`): Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster&#39;s control plane. The NodePool will have the same name and namespace as the cluster. When `null`, the `control_plane_node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.control_plane_node_pool_config.new](#fn-control_planecontrol_plane_node_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane` sub block.\n', args=[]),
    new(
      api_server_args=null,
      control_plane_node_pool_config=null
    ):: std.prune(a={
      api_server_args: api_server_args,
      control_plane_node_pool_config: control_plane_node_pool_config,
    }),
  },
  load_balancer:: {
    bgp_lb_config:: {
      address_pools:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.address_pools.new` constructs a new object with attributes and blocks configured for the `address_pools`\nTerraform sub block.\n\n\n\n**Args**:\n  - `addresses` (`list`): The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).\n  - `avoid_buggy_ips` (`bool`): If true, avoid using IPs ending in .0 or .255.\nThis avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses. When `null`, the `avoid_buggy_ips` field will be omitted from the resulting object.\n  - `manual_assign` (`string`): If true, prevent IP addresses from being automatically assigned. When `null`, the `manual_assign` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the address pool.\n\n**Returns**:\n  - An attribute object that represents the `address_pools` sub block.\n', args=[]),
        new(
          addresses,
          pool,
          avoid_buggy_ips=null,
          manual_assign=null
        ):: std.prune(a={
          addresses: addresses,
          avoid_buggy_ips: avoid_buggy_ips,
          manual_assign: manual_assign,
          pool: pool,
        }),
      },
      bgp_peer_configs:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.bgp_peer_configs.new` constructs a new object with attributes and blocks configured for the `bgp_peer_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `asn` (`number`): BGP autonomous system number (ASN) for the network that contains the\nexternal peer device.\n  - `control_plane_nodes` (`list`): The IP address of the control plane node that connects to the external\npeer.\nIf you don&#39;t specify any control plane nodes, all control plane nodes\ncan connect to the external peer. If you specify one or more IP addresses,\nonly the nodes specified participate in peering sessions. When `null`, the `control_plane_nodes` field will be omitted from the resulting object.\n  - `ip_address` (`string`): The IP address of the external peer device.\n\n**Returns**:\n  - An attribute object that represents the `bgp_peer_configs` sub block.\n', args=[]),
        new(
          asn,
          ip_address,
          control_plane_nodes=null
        ):: std.prune(a={
          asn: asn,
          control_plane_nodes: control_plane_nodes,
          ip_address: ip_address,
        }),
      },
      load_balancer_node_pool_config:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.new` constructs a new object with attributes and blocks configured for the `load_balancer_node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool_config` (`list[obj]`): The generic configuration for a node pool running a load balancer. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.new](#fn-load_balancerload_balancerbgp_lb_confignode_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `load_balancer_node_pool_config` sub block.\n', args=[]),
        new(
          node_pool_config=null
        ):: std.prune(a={
          node_pool_config: node_pool_config,
        }),
        node_pool_config:: {
          kubelet_config:: {
            '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.kubelet_config.new` constructs a new object with attributes and blocks configured for the `kubelet_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `registry_burst` (`number`): The maximum size of bursty pulls, temporarily allows pulls to burst to this\nnumber, while still not exceeding registry_pull_qps.\nThe value must not be a negative number.\nUpdating this field may impact scalability by changing the amount of\ntraffic produced by image pulls.\nDefaults to 10. When `null`, the `registry_burst` field will be omitted from the resulting object.\n  - `registry_pull_qps` (`number`): The limit of registry pulls per second.\nSetting this value to 0 means no limit.\nUpdating this field may impact scalability by changing the amount of\ntraffic produced by image pulls.\nDefaults to 5. When `null`, the `registry_pull_qps` field will be omitted from the resulting object.\n  - `serialize_image_pulls_disabled` (`bool`): Prevents the Kubelet from pulling multiple images at a time.\nWe recommend *not* changing the default value on nodes that run docker\ndaemon with version  &lt; 1.9 or an Another Union File System (Aufs) storage\nbackend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has\nmore details. When `null`, the `serialize_image_pulls_disabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kubelet_config` sub block.\n', args=[]),
            new(
              registry_burst=null,
              registry_pull_qps=null,
              serialize_image_pulls_disabled=null
            ):: std.prune(a={
              registry_burst: registry_burst,
              registry_pull_qps: registry_pull_qps,
              serialize_image_pulls_disabled: serialize_image_pulls_disabled,
            }),
          },
          '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `operating_system` (`string`): Specifies the nodes operating system (default: LINUX). When `null`, the `operating_system` field will be omitted from the resulting object.\n  - `kubelet_config` (`list[obj]`): The modifiable kubelet configurations for the baremetal machines. When `null`, the `kubelet_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.kubelet_config.new](#fn-load_balancerload_balancerbgp_lb_configload_balancer_node_pool_configkubelet_confignew) constructor.\n  - `node_configs` (`list[obj]`): The list of machine addresses in the Bare Metal Node Pool. When `null`, the `node_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.node_configs.new](#fn-load_balancerload_balancerbgp_lb_configload_balancer_node_pool_confignode_configsnew) constructor.\n  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.taints.new](#fn-load_balancerload_balancerbgp_lb_configload_balancer_node_pool_configtaintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_config` sub block.\n', args=[]),
          new(
            kubelet_config=null,
            labels=null,
            node_configs=null,
            operating_system=null,
            taints=null
          ):: std.prune(a={
            kubelet_config: kubelet_config,
            labels: labels,
            node_configs: node_configs,
            operating_system: operating_system,
            taints: taints,
          }),
          node_configs:: {
            '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.node_configs.new` constructs a new object with attributes and blocks configured for the `node_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `node_ip` (`string`): The default IPv4 address for SSH access and Kubernetes node.\nExample: 192.168.0.1 When `null`, the `node_ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_configs` sub block.\n', args=[]),
            new(
              labels=null,
              node_ip=null
            ):: std.prune(a={
              labels: labels,
              node_ip: node_ip,
            }),
          },
          taints:: {
            '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.node_pool_config.taints.new` constructs a new object with attributes and blocks configured for the `taints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `effect` (`string`): Specifies the nodes operating system (default: LINUX). Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.\n  - `key` (`string`): Key associated with the effect. When `null`, the `key` field will be omitted from the resulting object.\n  - `value` (`string`): Value associated with the effect. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `taints` sub block.\n', args=[]),
            new(
              effect=null,
              key=null,
              value=null
            ):: std.prune(a={
              effect: effect,
              key: key,
              value: value,
            }),
          },
        },
      },
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.new` constructs a new object with attributes and blocks configured for the `bgp_lb_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `asn` (`number`): BGP autonomous system number (ASN) of the cluster.\nThis field can be updated after cluster creation.\n  - `address_pools` (`list[obj]`): AddressPools is a list of non-overlapping IP pools used by load balancer\ntyped services. All addresses must be routable to load balancer nodes.\nIngressVIP must be included in the pools. When `null`, the `address_pools` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.address_pools.new](#fn-load_balancerload_balanceraddress_poolsnew) constructor.\n  - `bgp_peer_configs` (`list[obj]`): The list of BGP peers that the cluster will connect to.\nAt least one peer must be configured for each control plane node.\nControl plane nodes will connect to these peers to advertise the control\nplane VIP. The Services load balancer also uses these peers by default.\nThis field can be updated after cluster creation. When `null`, the `bgp_peer_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.bgp_peer_configs.new](#fn-load_balancerload_balancerbgp_peer_configsnew) constructor.\n  - `load_balancer_node_pool_config` (`list[obj]`): Specifies the node pool running data plane load balancing. L2 connectivity\nis required among nodes in this pool. If missing, the control plane node\npool is used for data plane load balancing. When `null`, the `load_balancer_node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.load_balancer_node_pool_config.new](#fn-load_balancerload_balancerload_balancer_node_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bgp_lb_config` sub block.\n', args=[]),
      new(
        asn,
        address_pools=null,
        bgp_peer_configs=null,
        load_balancer_node_pool_config=null
      ):: std.prune(a={
        address_pools: address_pools,
        asn: asn,
        bgp_peer_configs: bgp_peer_configs,
        load_balancer_node_pool_config: load_balancer_node_pool_config,
      }),
    },
    manual_lb_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.manual_lb_config.new` constructs a new object with attributes and blocks configured for the `manual_lb_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether manual load balancing is enabled.\n\n**Returns**:\n  - An attribute object that represents the `manual_lb_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    metal_lb_config:: {
      address_pools:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.address_pools.new` constructs a new object with attributes and blocks configured for the `address_pools`\nTerraform sub block.\n\n\n\n**Args**:\n  - `addresses` (`list`): The addresses that are part of this pool. Each address must be either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).\n  - `avoid_buggy_ips` (`bool`): If true, avoid using IPs ending in .0 or .255.\nThis avoids buggy consumer devices mistakenly dropping IPv4 traffic for those special IP addresses. When `null`, the `avoid_buggy_ips` field will be omitted from the resulting object.\n  - `manual_assign` (`bool`): If true, prevent IP addresses from being automatically assigned. When `null`, the `manual_assign` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the address pool.\n\n**Returns**:\n  - An attribute object that represents the `address_pools` sub block.\n', args=[]),
        new(
          addresses,
          pool,
          avoid_buggy_ips=null,
          manual_assign=null
        ):: std.prune(a={
          addresses: addresses,
          avoid_buggy_ips: avoid_buggy_ips,
          manual_assign: manual_assign,
          pool: pool,
        }),
      },
      load_balancer_node_pool_config:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.new` constructs a new object with attributes and blocks configured for the `load_balancer_node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_pool_config` (`list[obj]`): The generic configuration for a node pool running a load balancer. When `null`, the `node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.new](#fn-load_balancerload_balancermetal_lb_confignode_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `load_balancer_node_pool_config` sub block.\n', args=[]),
        new(
          node_pool_config=null
        ):: std.prune(a={
          node_pool_config: node_pool_config,
        }),
        node_pool_config:: {
          '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.new` constructs a new object with attributes and blocks configured for the `node_pool_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `operating_system` (`string`): Specifies the nodes operating system (default: LINUX). When `null`, the `operating_system` field will be omitted from the resulting object.\n  - `node_configs` (`list[obj]`): The list of machine addresses in the Bare Metal Node Pool. When `null`, the `node_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.node_configs.new](#fn-load_balancerload_balancermetal_lb_configload_balancer_node_pool_confignode_configsnew) constructor.\n  - `taints` (`list[obj]`): The initial taints assigned to nodes of this node pool. When `null`, the `taints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.taints.new](#fn-load_balancerload_balancermetal_lb_configload_balancer_node_pool_configtaintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `node_pool_config` sub block.\n', args=[]),
          new(
            labels=null,
            node_configs=null,
            operating_system=null,
            taints=null
          ):: std.prune(a={
            labels: labels,
            node_configs: node_configs,
            operating_system: operating_system,
            taints: taints,
          }),
          node_configs:: {
            '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.node_configs.new` constructs a new object with attributes and blocks configured for the `node_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): The map of Kubernetes labels (key/value pairs) to be applied to\neach node. These will added in addition to any default label(s)\nthat Kubernetes may apply to the node. In case of conflict in\nlabel keys, the applied set may differ depending on the Kubernetes\nversion -- it&#39;s best to assume the behavior is undefined and\nconflicts should be avoided. For more information, including usage\nand the valid values, see:\n  http://kubernetes.io/v1.1/docs/user-guide/labels.html\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `node_ip` (`string`): The default IPv4 address for SSH access and Kubernetes node.\nExample: 192.168.0.1 When `null`, the `node_ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_configs` sub block.\n', args=[]),
            new(
              labels=null,
              node_ip=null
            ):: std.prune(a={
              labels: labels,
              node_ip: node_ip,
            }),
          },
          taints:: {
            '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.node_pool_config.taints.new` constructs a new object with attributes and blocks configured for the `taints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `effect` (`string`): Specifies the nodes operating system (default: LINUX). Possible values: [&#34;EFFECT_UNSPECIFIED&#34;, &#34;PREFER_NO_SCHEDULE&#34;, &#34;NO_EXECUTE&#34;] When `null`, the `effect` field will be omitted from the resulting object.\n  - `key` (`string`): Key associated with the effect. When `null`, the `key` field will be omitted from the resulting object.\n  - `value` (`string`): Value associated with the effect. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `taints` sub block.\n', args=[]),
            new(
              effect=null,
              key=null,
              value=null
            ):: std.prune(a={
              effect: effect,
              key: key,
              value: value,
            }),
          },
        },
      },
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.new` constructs a new object with attributes and blocks configured for the `metal_lb_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address_pools` (`list[obj]`): AddressPools is a list of non-overlapping IP pools used by load balancer\ntyped services. All addresses must be routable to load balancer nodes.\nIngressVIP must be included in the pools. When `null`, the `address_pools` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.address_pools.new](#fn-load_balancerload_balanceraddress_poolsnew) constructor.\n  - `load_balancer_node_pool_config` (`list[obj]`): Specifies the load balancer&#39;s node pool configuration. When `null`, the `load_balancer_node_pool_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.load_balancer_node_pool_config.new](#fn-load_balancerload_balancerload_balancer_node_pool_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metal_lb_config` sub block.\n', args=[]),
      new(
        address_pools=null,
        load_balancer_node_pool_config=null
      ):: std.prune(a={
        address_pools: address_pools,
        load_balancer_node_pool_config: load_balancer_node_pool_config,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.new` constructs a new object with attributes and blocks configured for the `load_balancer`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bgp_lb_config` (`list[obj]`): Configuration for BGP typed load balancers. When `null`, the `bgp_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.bgp_lb_config.new](#fn-load_balancerbgp_lb_confignew) constructor.\n  - `manual_lb_config` (`list[obj]`): A nested object resource When `null`, the `manual_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.manual_lb_config.new](#fn-load_balancermanual_lb_confignew) constructor.\n  - `metal_lb_config` (`list[obj]`): A nested object resource When `null`, the `metal_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.metal_lb_config.new](#fn-load_balancermetal_lb_confignew) constructor.\n  - `port_config` (`list[obj]`): Specifies the load balancer ports. When `null`, the `port_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.port_config.new](#fn-load_balancerport_confignew) constructor.\n  - `vip_config` (`list[obj]`): Specified the Bare Metal Load Balancer Config When `null`, the `vip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.vip_config.new](#fn-load_balancervip_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `load_balancer` sub block.\n', args=[]),
    new(
      bgp_lb_config=null,
      manual_lb_config=null,
      metal_lb_config=null,
      port_config=null,
      vip_config=null
    ):: std.prune(a={
      bgp_lb_config: bgp_lb_config,
      manual_lb_config: manual_lb_config,
      metal_lb_config: metal_lb_config,
      port_config: port_config,
      vip_config: vip_config,
    }),
    port_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.port_config.new` constructs a new object with attributes and blocks configured for the `port_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane_load_balancer_port` (`number`): The port that control plane hosted load balancers will listen on.\n\n**Returns**:\n  - An attribute object that represents the `port_config` sub block.\n', args=[]),
      new(
        control_plane_load_balancer_port
      ):: std.prune(a={
        control_plane_load_balancer_port: control_plane_load_balancer_port,
      }),
    },
    vip_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.load_balancer.vip_config.new` constructs a new object with attributes and blocks configured for the `vip_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane_vip` (`string`): The VIP which you previously set aside for the Kubernetes API of this Bare Metal User Cluster.\n  - `ingress_vip` (`string`): The VIP which you previously set aside for ingress traffic into this Bare Metal User Cluster.\n\n**Returns**:\n  - An attribute object that represents the `vip_config` sub block.\n', args=[]),
      new(
        control_plane_vip,
        ingress_vip
      ):: std.prune(a={
        control_plane_vip: control_plane_vip,
        ingress_vip: ingress_vip,
      }),
    },
  },
  maintenance_config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.maintenance_config.new` constructs a new object with attributes and blocks configured for the `maintenance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `maintenance_address_cidr_blocks` (`list`): All IPv4 address from these ranges will be placed into maintenance mode.\nNodes in maintenance mode will be cordoned and drained. When both of these\nare true, the &#34;baremetal.cluster.gke.io/maintenance&#34; annotation will be set\non the node resource.\n\n**Returns**:\n  - An attribute object that represents the `maintenance_config` sub block.\n', args=[]),
    new(
      maintenance_address_cidr_blocks
    ):: std.prune(a={
      maintenance_address_cidr_blocks: maintenance_address_cidr_blocks,
    }),
  },
  network_config:: {
    island_mode_cidr:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.network_config.island_mode_cidr.new` constructs a new object with attributes and blocks configured for the `island_mode_cidr`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pod_address_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.\n  - `service_address_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.\n\n**Returns**:\n  - An attribute object that represents the `island_mode_cidr` sub block.\n', args=[]),
      new(
        pod_address_cidr_blocks,
        service_address_cidr_blocks
      ):: std.prune(a={
        pod_address_cidr_blocks: pod_address_cidr_blocks,
        service_address_cidr_blocks: service_address_cidr_blocks,
      }),
    },
    multiple_network_interfaces_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.network_config.multiple_network_interfaces_config.new` constructs a new object with attributes and blocks configured for the `multiple_network_interfaces_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether to enable multiple network interfaces for your pods.\nWhen set network_config.advanced_networking is automatically\nset to true. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `multiple_network_interfaces_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `advanced_networking` (`bool`): Enables the use of advanced Anthos networking features, such as Bundled\nLoad Balancing with BGP or the egress NAT gateway.\nSetting configuration for advanced networking features will automatically\nset this flag. When `null`, the `advanced_networking` field will be omitted from the resulting object.\n  - `island_mode_cidr` (`list[obj]`): A nested object resource When `null`, the `island_mode_cidr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.network_config.island_mode_cidr.new](#fn-network_configisland_mode_cidrnew) constructor.\n  - `multiple_network_interfaces_config` (`list[obj]`): Configuration for multiple network interfaces. When `null`, the `multiple_network_interfaces_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.network_config.multiple_network_interfaces_config.new](#fn-network_configmultiple_network_interfaces_confignew) constructor.\n  - `sr_iov_config` (`list[obj]`): Configuration for SR-IOV. When `null`, the `sr_iov_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.network_config.sr_iov_config.new](#fn-network_configsr_iov_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      advanced_networking=null,
      island_mode_cidr=null,
      multiple_network_interfaces_config=null,
      sr_iov_config=null
    ):: std.prune(a={
      advanced_networking: advanced_networking,
      island_mode_cidr: island_mode_cidr,
      multiple_network_interfaces_config: multiple_network_interfaces_config,
      sr_iov_config: sr_iov_config,
    }),
    sr_iov_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.network_config.sr_iov_config.new` constructs a new object with attributes and blocks configured for the `sr_iov_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether to install the SR-IOV operator. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `sr_iov_config` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.gkeonprem_bare_metal_cluster.new` injects a new `google_gkeonprem_bare_metal_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gkeonprem_bare_metal_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gkeonprem_bare_metal_cluster` using the reference:\n\n    $._ref.google_gkeonprem_bare_metal_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gkeonprem_bare_metal_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `admin_cluster_membership` (`string`): The Admin Cluster this Bare Metal User Cluster belongs to.\nThis is the full resource name of the Admin Cluster\u0026#39;s hub membership.\n  - `annotations` (`obj`): Annotations on the Bare Metal User Cluster.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `bare_metal_version` (`string`): A human readable description of this Bare Metal User Cluster.\n  - `description` (`string`): A human readable description of this Bare Metal User Cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The bare metal cluster name.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `binary_authorization` (`list[obj]`): Binary Authorization related configurations. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.\n  - `cluster_operations` (`list[obj]`): Specifies the User Cluster\u0026#39;s observability infrastructure. When `null`, the `cluster_operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.cluster_operations.new](#fn-cluster_operationsnew) constructor.\n  - `control_plane` (`list[obj]`): Specifies the control plane configuration. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.new](#fn-control_planenew) constructor.\n  - `load_balancer` (`list[obj]`): Specifies the load balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.new](#fn-load_balancernew) constructor.\n  - `maintenance_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `maintenance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.maintenance_config.new](#fn-maintenance_confignew) constructor.\n  - `network_config` (`list[obj]`): Network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.network_config.new](#fn-network_confignew) constructor.\n  - `node_access_config` (`list[obj]`): Specifies the node access related settings for the bare metal user cluster. When `null`, the `node_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.node_access_config.new](#fn-node_access_confignew) constructor.\n  - `node_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.node_config.new](#fn-node_confignew) constructor.\n  - `os_environment_config` (`list[obj]`): OS environment related configurations. When `null`, the `os_environment_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.os_environment_config.new](#fn-os_environment_confignew) constructor.\n  - `proxy` (`list[obj]`): Specifies the cluster proxy configuration. When `null`, the `proxy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.proxy.new](#fn-proxynew) constructor.\n  - `security_config` (`list[obj]`): Specifies the security related settings for the Bare Metal User Cluster. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.security_config.new](#fn-security_confignew) constructor.\n  - `storage` (`list[obj]`): Specifies the cluster storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.storage.new](#fn-storagenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `upgrade_policy` (`list[obj]`): The cluster upgrade policy. When `null`, the `upgrade_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.upgrade_policy.new](#fn-upgrade_policynew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    admin_cluster_membership,
    bare_metal_version,
    location,
    name,
    annotations=null,
    binary_authorization=null,
    cluster_operations=null,
    control_plane=null,
    description=null,
    load_balancer=null,
    maintenance_config=null,
    network_config=null,
    node_access_config=null,
    node_config=null,
    os_environment_config=null,
    project=null,
    proxy=null,
    security_config=null,
    storage=null,
    timeouts=null,
    upgrade_policy=null,
    _meta={}
  ):: tf.withResource(
    type='google_gkeonprem_bare_metal_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin_cluster_membership=admin_cluster_membership,
      annotations=annotations,
      bare_metal_version=bare_metal_version,
      binary_authorization=binary_authorization,
      cluster_operations=cluster_operations,
      control_plane=control_plane,
      description=description,
      load_balancer=load_balancer,
      location=location,
      maintenance_config=maintenance_config,
      name=name,
      network_config=network_config,
      node_access_config=node_access_config,
      node_config=node_config,
      os_environment_config=os_environment_config,
      project=project,
      proxy=proxy,
      security_config=security_config,
      storage=storage,
      timeouts=timeouts,
      upgrade_policy=upgrade_policy
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_bare_metal_cluster`\nTerraform resource.\n\nUnlike [google.gkeonprem_bare_metal_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `admin_cluster_membership` (`string`): The Admin Cluster this Bare Metal User Cluster belongs to.\nThis is the full resource name of the Admin Cluster&#39;s hub membership.\n  - `annotations` (`obj`): Annotations on the Bare Metal User Cluster.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `bare_metal_version` (`string`): A human readable description of this Bare Metal User Cluster.\n  - `description` (`string`): A human readable description of this Bare Metal User Cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The bare metal cluster name.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `binary_authorization` (`list[obj]`): Binary Authorization related configurations. When `null`, the `binary_authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.binary_authorization.new](#fn-binary_authorizationnew) constructor.\n  - `cluster_operations` (`list[obj]`): Specifies the User Cluster&#39;s observability infrastructure. When `null`, the `cluster_operations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.cluster_operations.new](#fn-cluster_operationsnew) constructor.\n  - `control_plane` (`list[obj]`): Specifies the control plane configuration. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.control_plane.new](#fn-control_planenew) constructor.\n  - `load_balancer` (`list[obj]`): Specifies the load balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.load_balancer.new](#fn-load_balancernew) constructor.\n  - `maintenance_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `maintenance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.maintenance_config.new](#fn-maintenance_confignew) constructor.\n  - `network_config` (`list[obj]`): Network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.network_config.new](#fn-network_confignew) constructor.\n  - `node_access_config` (`list[obj]`): Specifies the node access related settings for the bare metal user cluster. When `null`, the `node_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.node_access_config.new](#fn-node_access_confignew) constructor.\n  - `node_config` (`list[obj]`): Specifies the workload node configurations. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.node_config.new](#fn-node_confignew) constructor.\n  - `os_environment_config` (`list[obj]`): OS environment related configurations. When `null`, the `os_environment_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.os_environment_config.new](#fn-os_environment_confignew) constructor.\n  - `proxy` (`list[obj]`): Specifies the cluster proxy configuration. When `null`, the `proxy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.proxy.new](#fn-proxynew) constructor.\n  - `security_config` (`list[obj]`): Specifies the security related settings for the Bare Metal User Cluster. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.security_config.new](#fn-security_confignew) constructor.\n  - `storage` (`list[obj]`): Specifies the cluster storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.storage.new](#fn-storagenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `upgrade_policy` (`list[obj]`): The cluster upgrade policy. When `null`, the `upgrade_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.upgrade_policy.new](#fn-upgrade_policynew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_bare_metal_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    admin_cluster_membership,
    bare_metal_version,
    location,
    name,
    annotations=null,
    binary_authorization=null,
    cluster_operations=null,
    control_plane=null,
    description=null,
    load_balancer=null,
    maintenance_config=null,
    network_config=null,
    node_access_config=null,
    node_config=null,
    os_environment_config=null,
    project=null,
    proxy=null,
    security_config=null,
    storage=null,
    timeouts=null,
    upgrade_policy=null
  ):: std.prune(a={
    admin_cluster_membership: admin_cluster_membership,
    annotations: annotations,
    bare_metal_version: bare_metal_version,
    binary_authorization: binary_authorization,
    cluster_operations: cluster_operations,
    control_plane: control_plane,
    description: description,
    load_balancer: load_balancer,
    location: location,
    maintenance_config: maintenance_config,
    name: name,
    network_config: network_config,
    node_access_config: node_access_config,
    node_config: node_config,
    os_environment_config: os_environment_config,
    project: project,
    proxy: proxy,
    security_config: security_config,
    storage: storage,
    timeouts: timeouts,
    upgrade_policy: upgrade_policy,
  }),
  node_access_config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.node_access_config.new` constructs a new object with attributes and blocks configured for the `node_access_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `login_user` (`string`): LoginUser is the user name used to access node machines.\nIt defaults to &#34;root&#34; if not set. When `null`, the `login_user` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_access_config` sub block.\n', args=[]),
    new(
      login_user=null
    ):: std.prune(a={
      login_user: login_user,
    }),
  },
  node_config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `container_runtime` (`string`): The available runtimes that can be used to run containers in a Bare Metal User Cluster. Possible values: [&#34;CONTAINER_RUNTIME_UNSPECIFIED&#34;, &#34;DOCKER&#34;, &#34;CONTAINERD&#34;] When `null`, the `container_runtime` field will be omitted from the resulting object.\n  - `max_pods_per_node` (`number`): The maximum number of pods a node can run. The size of the CIDR range\nassigned to the node will be derived from this parameter. When `null`, the `max_pods_per_node` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      container_runtime=null,
      max_pods_per_node=null
    ):: std.prune(a={
      container_runtime: container_runtime,
      max_pods_per_node: max_pods_per_node,
    }),
  },
  os_environment_config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.os_environment_config.new` constructs a new object with attributes and blocks configured for the `os_environment_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `package_repo_excluded` (`bool`): Whether the package repo should not be included when initializing\nbare metal machines.\n\n**Returns**:\n  - An attribute object that represents the `os_environment_config` sub block.\n', args=[]),
    new(
      package_repo_excluded
    ):: std.prune(a={
      package_repo_excluded: package_repo_excluded,
    }),
  },
  proxy:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.proxy.new` constructs a new object with attributes and blocks configured for the `proxy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `no_proxy` (`list`): A list of IPs, hostnames, and domains that should skip the proxy.\nExamples: [&#34;127.0.0.1&#34;, &#34;example.com&#34;, &#34;.corp&#34;, &#34;localhost&#34;]. When `null`, the `no_proxy` field will be omitted from the resulting object.\n  - `uri` (`string`): Specifies the address of your proxy server.\nExamples: http://domain\nWARNING: Do not provide credentials in the format\nhttp://(username:password@)domain these will be rejected by the server.\n\n**Returns**:\n  - An attribute object that represents the `proxy` sub block.\n', args=[]),
    new(
      uri,
      no_proxy=null
    ):: std.prune(a={
      no_proxy: no_proxy,
      uri: uri,
    }),
  },
  security_config:: {
    authorization:: {
      admin_users:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.security_config.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): The name of the user, e.g. &#39;my-gcp-id@gmail.com&#39;.\n\n**Returns**:\n  - An attribute object that represents the `admin_users` sub block.\n', args=[]),
        new(
          username
        ):: std.prune(a={
          username: username,
        }),
      },
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.security_config.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_users` (`list[obj]`): Users that will be granted the cluster-admin role on the cluster, providing full access to the cluster. When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.security_config.authorization.admin_users.new](#fn-security_configsecurity_configadmin_usersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `authorization` sub block.\n', args=[]),
      new(
        admin_users=null
      ):: std.prune(a={
        admin_users: admin_users,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.security_config.new` constructs a new object with attributes and blocks configured for the `security_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `authorization` (`list[obj]`): Configures user access to the Bare Metal User cluster. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.security_config.authorization.new](#fn-security_configauthorizationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `security_config` sub block.\n', args=[]),
    new(
      authorization=null
    ):: std.prune(a={
      authorization: authorization,
    }),
  },
  storage:: {
    lvp_node_mounts_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.storage.lvp_node_mounts_config.new` constructs a new object with attributes and blocks configured for the `lvp_node_mounts_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): The host machine path.\n  - `storage_class` (`string`): The StorageClass name that PVs will be created with.\n\n**Returns**:\n  - An attribute object that represents the `lvp_node_mounts_config` sub block.\n', args=[]),
      new(
        path,
        storage_class
      ):: std.prune(a={
        path: path,
        storage_class: storage_class,
      }),
    },
    lvp_share_config:: {
      lvp_config:: {
        '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.storage.lvp_share_config.lvp_config.new` constructs a new object with attributes and blocks configured for the `lvp_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): The host machine path.\n  - `storage_class` (`string`): The StorageClass name that PVs will be created with.\n\n**Returns**:\n  - An attribute object that represents the `lvp_config` sub block.\n', args=[]),
        new(
          path,
          storage_class
        ):: std.prune(a={
          path: path,
          storage_class: storage_class,
        }),
      },
      '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.storage.lvp_share_config.new` constructs a new object with attributes and blocks configured for the `lvp_share_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `shared_path_pv_count` (`number`): The number of subdirectories to create under path. When `null`, the `shared_path_pv_count` field will be omitted from the resulting object.\n  - `lvp_config` (`list[obj]`): Defines the machine path and storage class for the LVP Share. When `null`, the `lvp_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.storage.lvp_share_config.lvp_config.new](#fn-storagestoragelvp_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `lvp_share_config` sub block.\n', args=[]),
      new(
        lvp_config=null,
        shared_path_pv_count=null
      ):: std.prune(a={
        lvp_config: lvp_config,
        shared_path_pv_count: shared_path_pv_count,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.storage.new` constructs a new object with attributes and blocks configured for the `storage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `lvp_node_mounts_config` (`list[obj]`): Specifies the config for local PersistentVolumes backed\nby mounted node disks. These disks need to be formatted and mounted by the\nuser, which can be done before or after cluster creation. When `null`, the `lvp_node_mounts_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.storage.lvp_node_mounts_config.new](#fn-storagelvp_node_mounts_confignew) constructor.\n  - `lvp_share_config` (`list[obj]`): Specifies the config for local PersistentVolumes backed by\nsubdirectories in a shared filesystem. These subdirectores are\nautomatically created during cluster creation. When `null`, the `lvp_share_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_bare_metal_cluster.storage.lvp_share_config.new](#fn-storagelvp_share_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `storage` sub block.\n', args=[]),
    new(
      lvp_node_mounts_config=null,
      lvp_share_config=null
    ):: std.prune(a={
      lvp_node_mounts_config: lvp_node_mounts_config,
      lvp_share_config: lvp_share_config,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  upgrade_policy:: {
    '#new':: d.fn(help='\n`google.gkeonprem_bare_metal_cluster.upgrade_policy.new` constructs a new object with attributes and blocks configured for the `upgrade_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `policy` (`string`): Specifies which upgrade policy to use. Possible values: [&#34;SERIAL&#34;, &#34;CONCURRENT&#34;] When `null`, the `policy` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `upgrade_policy` sub block.\n', args=[]),
    new(
      policy=null
    ):: std.prune(a={
      policy: policy,
    }),
  },
  '#withAdminClusterMembership':: d.fn(help='`google.string.withAdminClusterMembership` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the admin_cluster_membership field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `admin_cluster_membership` field.\n', args=[]),
  withAdminClusterMembership(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          admin_cluster_membership: value,
        },
      },
    },
  },
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withBareMetalVersion':: d.fn(help='`google.string.withBareMetalVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the bare_metal_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `bare_metal_version` field.\n', args=[]),
  withBareMetalVersion(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          bare_metal_version: value,
        },
      },
    },
  },
  '#withBinaryAuthorization':: d.fn(help='`google.list[obj].withBinaryAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the binary_authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBinaryAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.\n', args=[]),
  withBinaryAuthorization(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          binary_authorization: value,
        },
      },
    },
  },
  '#withBinaryAuthorizationMixin':: d.fn(help='`google.list[obj].withBinaryAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the binary_authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBinaryAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `binary_authorization` field.\n', args=[]),
  withBinaryAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          binary_authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterOperations':: d.fn(help='`google.list[obj].withClusterOperations` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_operations field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withClusterOperationsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_operations` field.\n', args=[]),
  withClusterOperations(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          cluster_operations: value,
        },
      },
    },
  },
  '#withClusterOperationsMixin':: d.fn(help='`google.list[obj].withClusterOperationsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_operations field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withClusterOperations](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_operations` field.\n', args=[]),
  withClusterOperationsMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          cluster_operations+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withControlPlane':: d.fn(help='`google.list[obj].withControlPlane` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withControlPlaneMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlane(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          control_plane: value,
        },
      },
    },
  },
  '#withControlPlaneMixin':: d.fn(help='`google.list[obj].withControlPlaneMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlane](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane` field.\n', args=[]),
  withControlPlaneMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          control_plane+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLoadBalancer':: d.fn(help='`google.list[obj].withLoadBalancer` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the load_balancer field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLoadBalancerMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `load_balancer` field.\n', args=[]),
  withLoadBalancer(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          load_balancer: value,
        },
      },
    },
  },
  '#withLoadBalancerMixin':: d.fn(help='`google.list[obj].withLoadBalancerMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the load_balancer field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLoadBalancer](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `load_balancer` field.\n', args=[]),
  withLoadBalancerMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          load_balancer+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMaintenanceConfig':: d.fn(help='`google.list[obj].withMaintenanceConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMaintenanceConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_config` field.\n', args=[]),
  withMaintenanceConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          maintenance_config: value,
        },
      },
    },
  },
  '#withMaintenanceConfigMixin':: d.fn(help='`google.list[obj].withMaintenanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maintenance_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maintenance_config` field.\n', args=[]),
  withMaintenanceConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          maintenance_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeAccessConfig':: d.fn(help='`google.list[obj].withNodeAccessConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_access_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeAccessConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_access_config` field.\n', args=[]),
  withNodeAccessConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          node_access_config: value,
        },
      },
    },
  },
  '#withNodeAccessConfigMixin':: d.fn(help='`google.list[obj].withNodeAccessConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_access_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeAccessConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_access_config` field.\n', args=[]),
  withNodeAccessConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          node_access_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOsEnvironmentConfig':: d.fn(help='`google.list[obj].withOsEnvironmentConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the os_environment_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOsEnvironmentConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `os_environment_config` field.\n', args=[]),
  withOsEnvironmentConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          os_environment_config: value,
        },
      },
    },
  },
  '#withOsEnvironmentConfigMixin':: d.fn(help='`google.list[obj].withOsEnvironmentConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the os_environment_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOsEnvironmentConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `os_environment_config` field.\n', args=[]),
  withOsEnvironmentConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          os_environment_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProxy':: d.fn(help='`google.list[obj].withProxy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the proxy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withProxyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `proxy` field.\n', args=[]),
  withProxy(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          proxy: value,
        },
      },
    },
  },
  '#withProxyMixin':: d.fn(help='`google.list[obj].withProxyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the proxy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withProxy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `proxy` field.\n', args=[]),
  withProxyMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          proxy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSecurityConfig':: d.fn(help='`google.list[obj].withSecurityConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the security_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecurityConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `security_config` field.\n', args=[]),
  withSecurityConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          security_config: value,
        },
      },
    },
  },
  '#withSecurityConfigMixin':: d.fn(help='`google.list[obj].withSecurityConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the security_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecurityConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `security_config` field.\n', args=[]),
  withSecurityConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          security_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStorage':: d.fn(help='`google.list[obj].withStorage` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the storage field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withStorageMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `storage` field.\n', args=[]),
  withStorage(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          storage: value,
        },
      },
    },
  },
  '#withStorageMixin':: d.fn(help='`google.list[obj].withStorageMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the storage field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withStorage](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `storage` field.\n', args=[]),
  withStorageMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          storage+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUpgradePolicy':: d.fn(help='`google.list[obj].withUpgradePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the upgrade_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withUpgradePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `upgrade_policy` field.\n', args=[]),
  withUpgradePolicy(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          upgrade_policy: value,
        },
      },
    },
  },
  '#withUpgradePolicyMixin':: d.fn(help='`google.list[obj].withUpgradePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the upgrade_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withUpgradePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `upgrade_policy` field.\n', args=[]),
  withUpgradePolicyMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_bare_metal_cluster+: {
        [resourceLabel]+: {
          upgrade_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
