local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gkeonprem_vmware_cluster', url='', help='`gkeonprem_vmware_cluster` represents the `google_gkeonprem_vmware_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  anti_affinity_groups:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.anti_affinity_groups.new` constructs a new object with attributes and blocks configured for the `anti_affinity_groups`\nTerraform sub block.\n\n\n\n**Args**:\n  - `aag_config_disabled` (`bool`): Spread nodes across at least three physical hosts (requires at least three\nhosts).\nEnabled by default.\n\n**Returns**:\n  - An attribute object that represents the `anti_affinity_groups` sub block.\n', args=[]),
    new(
      aag_config_disabled
    ):: std.prune(a={
      aag_config_disabled: aag_config_disabled,
    }),
  },
  authorization:: {
    admin_users:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): The name of the user, e.g. &#39;my-gcp-id@gmail.com&#39;.\n\n**Returns**:\n  - An attribute object that represents the `admin_users` sub block.\n', args=[]),
      new(
        username
      ):: std.prune(a={
        username: username,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `admin_users` (`list[obj]`): Users that will be granted the cluster-admin role on the cluster, providing\nfull access to the cluster. When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `authorization` sub block.\n', args=[]),
    new(
      admin_users=null
    ):: std.prune(a={
      admin_users: admin_users,
    }),
  },
  auto_repair_config:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.auto_repair_config.new` constructs a new object with attributes and blocks configured for the `auto_repair_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether auto repair is enabled.\n\n**Returns**:\n  - An attribute object that represents the `auto_repair_config` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  control_plane_node:: {
    auto_resize_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.control_plane_node.auto_resize_config.new` constructs a new object with attributes and blocks configured for the `auto_resize_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether to enable control plane node auto resizing.\n\n**Returns**:\n  - An attribute object that represents the `auto_resize_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.control_plane_node.new` constructs a new object with attributes and blocks configured for the `control_plane_node`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpus` (`number`): The number of CPUs for each admin cluster node that serve as control planes\nfor this VMware User Cluster. (default: 4 CPUs) When `null`, the `cpus` field will be omitted from the resulting object.\n  - `memory` (`number`): The megabytes of memory for each admin cluster node that serves as a\ncontrol plane for this VMware User Cluster (default: 8192 MB memory). When `null`, the `memory` field will be omitted from the resulting object.\n  - `replicas` (`number`): The number of control plane nodes for this VMware User Cluster.\n(default: 1 replica). When `null`, the `replicas` field will be omitted from the resulting object.\n  - `auto_resize_config` (`list[obj]`): AutoResizeConfig provides auto resizing configurations. When `null`, the `auto_resize_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.control_plane_node.auto_resize_config.new](#fn-control_plane_nodeauto_resize_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane_node` sub block.\n', args=[]),
    new(
      auto_resize_config=null,
      cpus=null,
      memory=null,
      replicas=null
    ):: std.prune(a={
      auto_resize_config: auto_resize_config,
      cpus: cpus,
      memory: memory,
      replicas: replicas,
    }),
  },
  dataplane_v2:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.dataplane_v2.new` constructs a new object with attributes and blocks configured for the `dataplane_v2`\nTerraform sub block.\n\n\n\n**Args**:\n  - `advanced_networking` (`bool`): Enable advanced networking which requires dataplane_v2_enabled to be set true. When `null`, the `advanced_networking` field will be omitted from the resulting object.\n  - `dataplane_v2_enabled` (`bool`): Enables Dataplane V2. When `null`, the `dataplane_v2_enabled` field will be omitted from the resulting object.\n  - `windows_dataplane_v2_enabled` (`bool`): Enable Dataplane V2 for clusters with Windows nodes. When `null`, the `windows_dataplane_v2_enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dataplane_v2` sub block.\n', args=[]),
    new(
      advanced_networking=null,
      dataplane_v2_enabled=null,
      windows_dataplane_v2_enabled=null
    ):: std.prune(a={
      advanced_networking: advanced_networking,
      dataplane_v2_enabled: dataplane_v2_enabled,
      windows_dataplane_v2_enabled: windows_dataplane_v2_enabled,
    }),
  },
  load_balancer:: {
    f5_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.load_balancer.f5_config.new` constructs a new object with attributes and blocks configured for the `f5_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address` (`string`): The load balancer&#39;s IP address. When `null`, the `address` field will be omitted from the resulting object.\n  - `partition` (`string`): he preexisting partition to be used by the load balancer. T\nhis partition is usually created for the admin cluster for example:\n&#39;my-f5-admin-partition&#39;. When `null`, the `partition` field will be omitted from the resulting object.\n  - `snat_pool` (`string`): The pool name. Only necessary, if using SNAT. When `null`, the `snat_pool` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `f5_config` sub block.\n', args=[]),
      new(
        address=null,
        partition=null,
        snat_pool=null
      ):: std.prune(a={
        address: address,
        partition: partition,
        snat_pool: snat_pool,
      }),
    },
    manual_lb_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.load_balancer.manual_lb_config.new` constructs a new object with attributes and blocks configured for the `manual_lb_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane_node_port` (`number`): NodePort for control plane service. The Kubernetes API server in the admin\ncluster is implemented as a Service of type NodePort (ex. 30968). When `null`, the `control_plane_node_port` field will be omitted from the resulting object.\n  - `ingress_http_node_port` (`number`): NodePort for ingress service&#39;s http. The ingress service in the admin\ncluster is implemented as a Service of type NodePort (ex. 32527). When `null`, the `ingress_http_node_port` field will be omitted from the resulting object.\n  - `ingress_https_node_port` (`number`): NodePort for ingress service&#39;s https. The ingress service in the admin\ncluster is implemented as a Service of type NodePort (ex. 30139). When `null`, the `ingress_https_node_port` field will be omitted from the resulting object.\n  - `konnectivity_server_node_port` (`number`): NodePort for konnectivity server service running as a sidecar in each\nkube-apiserver pod (ex. 30564). When `null`, the `konnectivity_server_node_port` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `manual_lb_config` sub block.\n', args=[]),
      new(
        control_plane_node_port=null,
        ingress_http_node_port=null,
        ingress_https_node_port=null,
        konnectivity_server_node_port=null
      ):: std.prune(a={
        control_plane_node_port: control_plane_node_port,
        ingress_http_node_port: ingress_http_node_port,
        ingress_https_node_port: ingress_https_node_port,
        konnectivity_server_node_port: konnectivity_server_node_port,
      }),
    },
    metal_lb_config:: {
      address_pools:: {
        '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.address_pools.new` constructs a new object with attributes and blocks configured for the `address_pools`\nTerraform sub block.\n\n\n\n**Args**:\n  - `addresses` (`list`): The addresses that are part of this pool. Each address\nmust be either in the CIDR form (1.2.3.0/24) or range\nform (1.2.3.1-1.2.3.5).\n  - `avoid_buggy_ips` (`bool`): If true, avoid using IPs ending in .0 or .255.\nThis avoids buggy consumer devices mistakenly dropping IPv4 traffic for\nthose special IP addresses. When `null`, the `avoid_buggy_ips` field will be omitted from the resulting object.\n  - `manual_assign` (`bool`): If true, prevent IP addresses from being automatically assigned. When `null`, the `manual_assign` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the address pool.\n\n**Returns**:\n  - An attribute object that represents the `address_pools` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.new` constructs a new object with attributes and blocks configured for the `metal_lb_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address_pools` (`list[obj]`): AddressPools is a list of non-overlapping IP pools used by load balancer\ntyped services. All addresses must be routable to load balancer nodes.\nIngressVIP must be included in the pools. When `null`, the `address_pools` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.address_pools.new](#fn-load_balancerload_balanceraddress_poolsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `metal_lb_config` sub block.\n', args=[]),
      new(
        address_pools=null
      ):: std.prune(a={
        address_pools: address_pools,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.load_balancer.new` constructs a new object with attributes and blocks configured for the `load_balancer`\nTerraform sub block.\n\n\n\n**Args**:\n  - `f5_config` (`list[obj]`): Configuration for F5 Big IP typed load balancers. When `null`, the `f5_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.f5_config.new](#fn-load_balancerf5_confignew) constructor.\n  - `manual_lb_config` (`list[obj]`): Manually configured load balancers. When `null`, the `manual_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.manual_lb_config.new](#fn-load_balancermanual_lb_confignew) constructor.\n  - `metal_lb_config` (`list[obj]`): Configuration for MetalLB typed load balancers. When `null`, the `metal_lb_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.metal_lb_config.new](#fn-load_balancermetal_lb_confignew) constructor.\n  - `vip_config` (`list[obj]`): The VIPs used by the load balancer. When `null`, the `vip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.vip_config.new](#fn-load_balancervip_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `load_balancer` sub block.\n', args=[]),
    new(
      f5_config=null,
      manual_lb_config=null,
      metal_lb_config=null,
      vip_config=null
    ):: std.prune(a={
      f5_config: f5_config,
      manual_lb_config: manual_lb_config,
      metal_lb_config: metal_lb_config,
      vip_config: vip_config,
    }),
    vip_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.load_balancer.vip_config.new` constructs a new object with attributes and blocks configured for the `vip_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane_vip` (`string`): The VIP which you previously set aside for the Kubernetes API of this cluster. When `null`, the `control_plane_vip` field will be omitted from the resulting object.\n  - `ingress_vip` (`string`): The VIP which you previously set aside for ingress traffic into this cluster. When `null`, the `ingress_vip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vip_config` sub block.\n', args=[]),
      new(
        control_plane_vip=null,
        ingress_vip=null
      ):: std.prune(a={
        control_plane_vip: control_plane_vip,
        ingress_vip: ingress_vip,
      }),
    },
  },
  network_config:: {
    control_plane_v2_config:: {
      control_plane_ip_block:: {
        ips:: {
          '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.ips.new` constructs a new object with attributes and blocks configured for the `ips`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hostname` (`string`): Hostname of the machine. VM&#39;s name will be used if this field is empty. When `null`, the `hostname` field will be omitted from the resulting object.\n  - `ip` (`string`): IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24). When `null`, the `ip` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ips` sub block.\n', args=[]),
          new(
            hostname=null,
            ip=null
          ):: std.prune(a={
            hostname: hostname,
            ip: ip,
          }),
        },
        '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.new` constructs a new object with attributes and blocks configured for the `control_plane_ip_block`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gateway` (`string`): The network gateway used by the VMware User Cluster. When `null`, the `gateway` field will be omitted from the resulting object.\n  - `netmask` (`string`): The netmask used by the VMware User Cluster. When `null`, the `netmask` field will be omitted from the resulting object.\n  - `ips` (`list[obj]`): The node&#39;s network configurations used by the VMware User Cluster. When `null`, the `ips` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.ips.new](#fn-network_confignetwork_configcontrol_plane_v2_configipsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane_ip_block` sub block.\n', args=[]),
        new(
          gateway=null,
          ips=null,
          netmask=null
        ):: std.prune(a={
          gateway: gateway,
          ips: ips,
          netmask: netmask,
        }),
      },
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.new` constructs a new object with attributes and blocks configured for the `control_plane_v2_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane_ip_block` (`list[obj]`): Static IP addresses for the control plane nodes. When `null`, the `control_plane_ip_block` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.control_plane_ip_block.new](#fn-network_confignetwork_configcontrol_plane_ip_blocknew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `control_plane_v2_config` sub block.\n', args=[]),
      new(
        control_plane_ip_block=null
      ):: std.prune(a={
        control_plane_ip_block: control_plane_ip_block,
      }),
    },
    dhcp_ip_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.dhcp_ip_config.new` constructs a new object with attributes and blocks configured for the `dhcp_ip_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): enabled is a flag to mark if DHCP IP allocation is\nused for VMware user clusters.\n\n**Returns**:\n  - An attribute object that represents the `dhcp_ip_config` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    host_config:: {
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.host_config.new` constructs a new object with attributes and blocks configured for the `host_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dns_search_domains` (`list`): DNS search domains. When `null`, the `dns_search_domains` field will be omitted from the resulting object.\n  - `dns_servers` (`list`): DNS servers. When `null`, the `dns_servers` field will be omitted from the resulting object.\n  - `ntp_servers` (`list`): NTP servers. When `null`, the `ntp_servers` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `host_config` sub block.\n', args=[]),
      new(
        dns_search_domains=null,
        dns_servers=null,
        ntp_servers=null
      ):: std.prune(a={
        dns_search_domains: dns_search_domains,
        dns_servers: dns_servers,
        ntp_servers: ntp_servers,
      }),
    },
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.new` constructs a new object with attributes and blocks configured for the `network_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pod_address_cidr_blocks` (`list`): All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.\nOnly a single range is supported. This field cannot be changed after creation.\n  - `service_address_cidr_blocks` (`list`): All services in the cluster are assigned an RFC1918 IPv4 address\nfrom these ranges. Only a single range is supported.. This field\ncannot be changed after creation.\n  - `control_plane_v2_config` (`list[obj]`): Configuration for control plane V2 mode. When `null`, the `control_plane_v2_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.control_plane_v2_config.new](#fn-network_configcontrol_plane_v2_confignew) constructor.\n  - `dhcp_ip_config` (`list[obj]`): Configuration settings for a DHCP IP configuration. When `null`, the `dhcp_ip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.dhcp_ip_config.new](#fn-network_configdhcp_ip_confignew) constructor.\n  - `host_config` (`list[obj]`): Represents common network settings irrespective of the host&#39;s IP address. When `null`, the `host_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.host_config.new](#fn-network_confighost_confignew) constructor.\n  - `static_ip_config` (`list[obj]`): Configuration settings for a static IP configuration. When `null`, the `static_ip_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.static_ip_config.new](#fn-network_configstatic_ip_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `network_config` sub block.\n', args=[]),
    new(
      pod_address_cidr_blocks,
      service_address_cidr_blocks,
      control_plane_v2_config=null,
      dhcp_ip_config=null,
      host_config=null,
      static_ip_config=null
    ):: std.prune(a={
      control_plane_v2_config: control_plane_v2_config,
      dhcp_ip_config: dhcp_ip_config,
      host_config: host_config,
      pod_address_cidr_blocks: pod_address_cidr_blocks,
      service_address_cidr_blocks: service_address_cidr_blocks,
      static_ip_config: static_ip_config,
    }),
    static_ip_config:: {
      ip_blocks:: {
        ips:: {
          '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.ips.new` constructs a new object with attributes and blocks configured for the `ips`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hostname` (`string`): Hostname of the machine. VM&#39;s name will be used if this field is empty. When `null`, the `hostname` field will be omitted from the resulting object.\n  - `ip` (`string`): IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).\n\n**Returns**:\n  - An attribute object that represents the `ips` sub block.\n', args=[]),
          new(
            ip,
            hostname=null
          ):: std.prune(a={
            hostname: hostname,
            ip: ip,
          }),
        },
        '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.new` constructs a new object with attributes and blocks configured for the `ip_blocks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gateway` (`string`): The network gateway used by the VMware User Cluster.\n  - `netmask` (`string`): The netmask used by the VMware User Cluster.\n  - `ips` (`list[obj]`): The node&#39;s network configurations used by the VMware User Cluster. When `null`, the `ips` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.ips.new](#fn-network_confignetwork_configstatic_ip_configipsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ip_blocks` sub block.\n', args=[]),
        new(
          gateway,
          netmask,
          ips=null
        ):: std.prune(a={
          gateway: gateway,
          ips: ips,
          netmask: netmask,
        }),
      },
      '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.network_config.static_ip_config.new` constructs a new object with attributes and blocks configured for the `static_ip_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_blocks` (`list[obj]`): Represents the configuration values for static IP allocation to nodes. When `null`, the `ip_blocks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.static_ip_config.ip_blocks.new](#fn-network_confignetwork_configip_blocksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `static_ip_config` sub block.\n', args=[]),
      new(
        ip_blocks=null
      ):: std.prune(a={
        ip_blocks: ip_blocks,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.gkeonprem_vmware_cluster.new` injects a new `google_gkeonprem_vmware_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gkeonprem_vmware_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gkeonprem_vmware_cluster` using the reference:\n\n    $._ref.google_gkeonprem_vmware_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gkeonprem_vmware_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `admin_cluster_membership` (`string`): The admin cluster this VMware User Cluster belongs to.\nThis is the full resource name of the admin cluster\u0026#39;s hub membership.\nIn the future, references to other resource types might be allowed if\nadmin clusters are modeled as their own resources.\n  - `annotations` (`obj`): Annotations on the VMware User Cluster.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field \u0026#39;effective_annotations\u0026#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): A human readable description of this VMware User Cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_control_plane_v2` (`bool`): Enable control plane V2. Default to false. When `null`, the `enable_control_plane_v2` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The VMware cluster name.\n  - `on_prem_version` (`string`): The Anthos clusters on the VMware version for your user cluster.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `vm_tracking_enabled` (`bool`): Enable VM tracking. When `null`, the `vm_tracking_enabled` field will be omitted from the resulting object.\n  - `anti_affinity_groups` (`list[obj]`): AAGConfig specifies whether to spread VMware User Cluster nodes across at\nleast three physical hosts in the datacenter. When `null`, the `anti_affinity_groups` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.anti_affinity_groups.new](#fn-anti_affinity_groupsnew) constructor.\n  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GKE On-Prem. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `auto_repair_config` (`list[obj]`): Configuration for auto repairing. When `null`, the `auto_repair_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.auto_repair_config.new](#fn-auto_repair_confignew) constructor.\n  - `control_plane_node` (`list[obj]`): VMware User Cluster control plane nodes must have either 1 or 3 replicas. When `null`, the `control_plane_node` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.control_plane_node.new](#fn-control_plane_nodenew) constructor.\n  - `dataplane_v2` (`list[obj]`): VmwareDataplaneV2Config specifies configuration for Dataplane V2. When `null`, the `dataplane_v2` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.dataplane_v2.new](#fn-dataplane_v2new) constructor.\n  - `load_balancer` (`list[obj]`): Load Balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.new](#fn-load_balancernew) constructor.\n  - `network_config` (`list[obj]`): The VMware User Cluster network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.new](#fn-network_confignew) constructor.\n  - `storage` (`list[obj]`): Storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.storage.new](#fn-storagenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `upgrade_policy` (`list[obj]`): Specifies upgrade policy for the cluster. When `null`, the `upgrade_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.upgrade_policy.new](#fn-upgrade_policynew) constructor.\n  - `vcenter` (`list[obj]`): VmwareVCenterConfig specifies vCenter config for the user cluster.\nInherited from the admin cluster. When `null`, the `vcenter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.vcenter.new](#fn-vcenternew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    admin_cluster_membership,
    location,
    name,
    on_prem_version,
    annotations=null,
    anti_affinity_groups=null,
    authorization=null,
    auto_repair_config=null,
    control_plane_node=null,
    dataplane_v2=null,
    description=null,
    enable_control_plane_v2=null,
    load_balancer=null,
    network_config=null,
    project=null,
    storage=null,
    timeouts=null,
    upgrade_policy=null,
    vcenter=null,
    vm_tracking_enabled=null,
    _meta={}
  ):: tf.withResource(
    type='google_gkeonprem_vmware_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      admin_cluster_membership=admin_cluster_membership,
      annotations=annotations,
      anti_affinity_groups=anti_affinity_groups,
      authorization=authorization,
      auto_repair_config=auto_repair_config,
      control_plane_node=control_plane_node,
      dataplane_v2=dataplane_v2,
      description=description,
      enable_control_plane_v2=enable_control_plane_v2,
      load_balancer=load_balancer,
      location=location,
      name=name,
      network_config=network_config,
      on_prem_version=on_prem_version,
      project=project,
      storage=storage,
      timeouts=timeouts,
      upgrade_policy=upgrade_policy,
      vcenter=vcenter,
      vm_tracking_enabled=vm_tracking_enabled
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gkeonprem_vmware_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `gkeonprem_vmware_cluster`\nTerraform resource.\n\nUnlike [google.gkeonprem_vmware_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `admin_cluster_membership` (`string`): The admin cluster this VMware User Cluster belongs to.\nThis is the full resource name of the admin cluster&#39;s hub membership.\nIn the future, references to other resource types might be allowed if\nadmin clusters are modeled as their own resources.\n  - `annotations` (`obj`): Annotations on the VMware User Cluster.\nThis field has the same restrictions as Kubernetes annotations.\nThe total size of all keys and values combined is limited to 256k.\nKey can have 2 segments: prefix (optional) and name (required),\nseparated by a slash (/).\nPrefix must be a DNS subdomain.\nName must be 63 characters or less, begin and end with alphanumerics,\nwith dashes (-), underscores (_), dots (.), and alphanumerics between.\n\n\n**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.\nPlease refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): A human readable description of this VMware User Cluster. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_control_plane_v2` (`bool`): Enable control plane V2. Default to false. When `null`, the `enable_control_plane_v2` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `name` (`string`): The VMware cluster name.\n  - `on_prem_version` (`string`): The Anthos clusters on the VMware version for your user cluster.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `vm_tracking_enabled` (`bool`): Enable VM tracking. When `null`, the `vm_tracking_enabled` field will be omitted from the resulting object.\n  - `anti_affinity_groups` (`list[obj]`): AAGConfig specifies whether to spread VMware User Cluster nodes across at\nleast three physical hosts in the datacenter. When `null`, the `anti_affinity_groups` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.anti_affinity_groups.new](#fn-anti_affinity_groupsnew) constructor.\n  - `authorization` (`list[obj]`): RBAC policy that will be applied and managed by GKE On-Prem. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.authorization.new](#fn-authorizationnew) constructor.\n  - `auto_repair_config` (`list[obj]`): Configuration for auto repairing. When `null`, the `auto_repair_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.auto_repair_config.new](#fn-auto_repair_confignew) constructor.\n  - `control_plane_node` (`list[obj]`): VMware User Cluster control plane nodes must have either 1 or 3 replicas. When `null`, the `control_plane_node` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.control_plane_node.new](#fn-control_plane_nodenew) constructor.\n  - `dataplane_v2` (`list[obj]`): VmwareDataplaneV2Config specifies configuration for Dataplane V2. When `null`, the `dataplane_v2` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.dataplane_v2.new](#fn-dataplane_v2new) constructor.\n  - `load_balancer` (`list[obj]`): Load Balancer configuration. When `null`, the `load_balancer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.load_balancer.new](#fn-load_balancernew) constructor.\n  - `network_config` (`list[obj]`): The VMware User Cluster network configuration. When `null`, the `network_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.network_config.new](#fn-network_confignew) constructor.\n  - `storage` (`list[obj]`): Storage configuration. When `null`, the `storage` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.storage.new](#fn-storagenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n  - `upgrade_policy` (`list[obj]`): Specifies upgrade policy for the cluster. When `null`, the `upgrade_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.upgrade_policy.new](#fn-upgrade_policynew) constructor.\n  - `vcenter` (`list[obj]`): VmwareVCenterConfig specifies vCenter config for the user cluster.\nInherited from the admin cluster. When `null`, the `vcenter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gkeonprem_vmware_cluster.vcenter.new](#fn-vcenternew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gkeonprem_vmware_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    admin_cluster_membership,
    location,
    name,
    on_prem_version,
    annotations=null,
    anti_affinity_groups=null,
    authorization=null,
    auto_repair_config=null,
    control_plane_node=null,
    dataplane_v2=null,
    description=null,
    enable_control_plane_v2=null,
    load_balancer=null,
    network_config=null,
    project=null,
    storage=null,
    timeouts=null,
    upgrade_policy=null,
    vcenter=null,
    vm_tracking_enabled=null
  ):: std.prune(a={
    admin_cluster_membership: admin_cluster_membership,
    annotations: annotations,
    anti_affinity_groups: anti_affinity_groups,
    authorization: authorization,
    auto_repair_config: auto_repair_config,
    control_plane_node: control_plane_node,
    dataplane_v2: dataplane_v2,
    description: description,
    enable_control_plane_v2: enable_control_plane_v2,
    load_balancer: load_balancer,
    location: location,
    name: name,
    network_config: network_config,
    on_prem_version: on_prem_version,
    project: project,
    storage: storage,
    timeouts: timeouts,
    upgrade_policy: upgrade_policy,
    vcenter: vcenter,
    vm_tracking_enabled: vm_tracking_enabled,
  }),
  storage:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.storage.new` constructs a new object with attributes and blocks configured for the `storage`\nTerraform sub block.\n\n\n\n**Args**:\n  - `vsphere_csi_disabled` (`bool`): Whether or not to deploy vSphere CSI components in the VMware User Cluster.\nEnabled by default.\n\n**Returns**:\n  - An attribute object that represents the `storage` sub block.\n', args=[]),
    new(
      vsphere_csi_disabled
    ):: std.prune(a={
      vsphere_csi_disabled: vsphere_csi_disabled,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.upgrade_policy.new` constructs a new object with attributes and blocks configured for the `upgrade_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane_only` (`bool`): Controls whether the upgrade applies to the control plane only. When `null`, the `control_plane_only` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `upgrade_policy` sub block.\n', args=[]),
    new(
      control_plane_only=null
    ):: std.prune(a={
      control_plane_only: control_plane_only,
    }),
  },
  vcenter:: {
    '#new':: d.fn(help='\n`google.gkeonprem_vmware_cluster.vcenter.new` constructs a new object with attributes and blocks configured for the `vcenter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ca_cert_data` (`string`): Contains the vCenter CA certificate public key for SSL verification. When `null`, the `ca_cert_data` field will be omitted from the resulting object.\n  - `cluster` (`string`): The name of the vCenter cluster for the user cluster. When `null`, the `cluster` field will be omitted from the resulting object.\n  - `datacenter` (`string`): The name of the vCenter datacenter for the user cluster. When `null`, the `datacenter` field will be omitted from the resulting object.\n  - `datastore` (`string`): The name of the vCenter datastore for the user cluster. When `null`, the `datastore` field will be omitted from the resulting object.\n  - `folder` (`string`): The name of the vCenter folder for the user cluster. When `null`, the `folder` field will be omitted from the resulting object.\n  - `resource_pool` (`string`): The name of the vCenter resource pool for the user cluster. When `null`, the `resource_pool` field will be omitted from the resulting object.\n  - `storage_policy_name` (`string`): The name of the vCenter storage policy for the user cluster. When `null`, the `storage_policy_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vcenter` sub block.\n', args=[]),
    new(
      ca_cert_data=null,
      cluster=null,
      datacenter=null,
      datastore=null,
      folder=null,
      resource_pool=null,
      storage_policy_name=null
    ):: std.prune(a={
      ca_cert_data: ca_cert_data,
      cluster: cluster,
      datacenter: datacenter,
      datastore: datastore,
      folder: folder,
      resource_pool: resource_pool,
      storage_policy_name: storage_policy_name,
    }),
  },
  '#withAdminClusterMembership':: d.fn(help='`google.string.withAdminClusterMembership` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the admin_cluster_membership field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `admin_cluster_membership` field.\n', args=[]),
  withAdminClusterMembership(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          admin_cluster_membership: value,
        },
      },
    },
  },
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withAntiAffinityGroups':: d.fn(help='`google.list[obj].withAntiAffinityGroups` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the anti_affinity_groups field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAntiAffinityGroupsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `anti_affinity_groups` field.\n', args=[]),
  withAntiAffinityGroups(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          anti_affinity_groups: value,
        },
      },
    },
  },
  '#withAntiAffinityGroupsMixin':: d.fn(help='`google.list[obj].withAntiAffinityGroupsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the anti_affinity_groups field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAntiAffinityGroups](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `anti_affinity_groups` field.\n', args=[]),
  withAntiAffinityGroupsMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          anti_affinity_groups+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAuthorization':: d.fn(help='`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorization(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  '#withAuthorizationMixin':: d.fn(help='`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the authorization field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `authorization` field.\n', args=[]),
  withAuthorizationMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withAutoRepairConfig':: d.fn(help='`google.list[obj].withAutoRepairConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the auto_repair_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoRepairConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `auto_repair_config` field.\n', args=[]),
  withAutoRepairConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          auto_repair_config: value,
        },
      },
    },
  },
  '#withAutoRepairConfigMixin':: d.fn(help='`google.list[obj].withAutoRepairConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the auto_repair_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoRepairConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `auto_repair_config` field.\n', args=[]),
  withAutoRepairConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          auto_repair_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withControlPlaneNode':: d.fn(help='`google.list[obj].withControlPlaneNode` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane_node field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withControlPlaneNodeMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane_node` field.\n', args=[]),
  withControlPlaneNode(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          control_plane_node: value,
        },
      },
    },
  },
  '#withControlPlaneNodeMixin':: d.fn(help='`google.list[obj].withControlPlaneNodeMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the control_plane_node field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlaneNode](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `control_plane_node` field.\n', args=[]),
  withControlPlaneNodeMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          control_plane_node+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDataplaneV2':: d.fn(help='`google.list[obj].withDataplaneV2` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dataplane_v2 field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDataplaneV2Mixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dataplane_v2` field.\n', args=[]),
  withDataplaneV2(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          dataplane_v2: value,
        },
      },
    },
  },
  '#withDataplaneV2Mixin':: d.fn(help='`google.list[obj].withDataplaneV2Mixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dataplane_v2 field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDataplaneV2](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dataplane_v2` field.\n', args=[]),
  withDataplaneV2Mixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          dataplane_v2+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnableControlPlaneV2':: d.fn(help='`google.bool.withEnableControlPlaneV2` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_control_plane_v2 field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_control_plane_v2` field.\n', args=[]),
  withEnableControlPlaneV2(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          enable_control_plane_v2: value,
        },
      },
    },
  },
  '#withLoadBalancer':: d.fn(help='`google.list[obj].withLoadBalancer` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the load_balancer field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLoadBalancerMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `load_balancer` field.\n', args=[]),
  withLoadBalancer(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          load_balancer: value,
        },
      },
    },
  },
  '#withLoadBalancerMixin':: d.fn(help='`google.list[obj].withLoadBalancerMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the load_balancer field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLoadBalancer](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `load_balancer` field.\n', args=[]),
  withLoadBalancerMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          load_balancer+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetworkConfig':: d.fn(help='`google.list[obj].withNetworkConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfig(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  '#withNetworkConfigMixin':: d.fn(help='`google.list[obj].withNetworkConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network_config` field.\n', args=[]),
  withNetworkConfigMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOnPremVersion':: d.fn(help='`google.string.withOnPremVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the on_prem_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `on_prem_version` field.\n', args=[]),
  withOnPremVersion(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          on_prem_version: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withStorage':: d.fn(help='`google.list[obj].withStorage` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the storage field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withStorageMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `storage` field.\n', args=[]),
  withStorage(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          storage: value,
        },
      },
    },
  },
  '#withStorageMixin':: d.fn(help='`google.list[obj].withStorageMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the storage field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withStorage](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `storage` field.\n', args=[]),
  withStorageMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          storage+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUpgradePolicy':: d.fn(help='`google.list[obj].withUpgradePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the upgrade_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withUpgradePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `upgrade_policy` field.\n', args=[]),
  withUpgradePolicy(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          upgrade_policy: value,
        },
      },
    },
  },
  '#withUpgradePolicyMixin':: d.fn(help='`google.list[obj].withUpgradePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the upgrade_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withUpgradePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `upgrade_policy` field.\n', args=[]),
  withUpgradePolicyMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          upgrade_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withVcenter':: d.fn(help='`google.list[obj].withVcenter` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vcenter field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVcenterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vcenter` field.\n', args=[]),
  withVcenter(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          vcenter: value,
        },
      },
    },
  },
  '#withVcenterMixin':: d.fn(help='`google.list[obj].withVcenterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vcenter field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVcenter](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vcenter` field.\n', args=[]),
  withVcenterMixin(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          vcenter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withVmTrackingEnabled':: d.fn(help='`google.bool.withVmTrackingEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the vm_tracking_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `vm_tracking_enabled` field.\n', args=[]),
  withVmTrackingEnabled(resourceLabel, value): {
    resource+: {
      google_gkeonprem_vmware_cluster+: {
        [resourceLabel]+: {
          vm_tracking_enabled: value,
        },
      },
    },
  },
}
