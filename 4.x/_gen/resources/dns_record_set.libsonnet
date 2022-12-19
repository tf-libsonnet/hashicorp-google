local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dns_record_set', url='', help='`dns_record_set` represents the `google_dns_record_set` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.dns_record_set.new` injects a new `google_dns_record_set` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dns_record_set.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dns_record_set` using the reference:\n\n    $._ref.google_dns_record_set.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dns_record_set.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `managed_zone` (`string`): The name of the zone in which this record set will reside.\n  - `name` (`string`): The DNS name this record set will apply to.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `rrdatas` (`list`): The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \\\u0026#34; if you don\u0026#39;t want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\\u0026#34;\\\u0026#34; inside the Terraform configuration string (e.g. \u0026#34;first255characters\\\u0026#34;\\\u0026#34;morecharacters\u0026#34;). When `null`, the `rrdatas` field will be omitted from the resulting object.\n  - `ttl` (`number`): The time-to-live of this record set (seconds). When `null`, the `ttl` field will be omitted from the resulting object.\n  - `type` (`string`): The DNS record set type.\n  - `routing_policy` (`list[obj]`): The configuration for steering traffic based on query. You can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type. When `null`, the `routing_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.new](#fn-routing_policynew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    managed_zone,
    name,
    type,
    project=null,
    routing_policy=null,
    rrdatas=null,
    ttl=null,
    _meta={}
  ):: tf.withResource(
    type='google_dns_record_set',
    label=resourceLabel,
    attrs=self.newAttrs(
      managed_zone=managed_zone,
      name=name,
      project=project,
      routing_policy=routing_policy,
      rrdatas=rrdatas,
      ttl=ttl,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dns_record_set.newAttrs` constructs a new object with attributes and blocks configured for the `dns_record_set`\nTerraform resource.\n\nUnlike [google.dns_record_set.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `managed_zone` (`string`): The name of the zone in which this record set will reside.\n  - `name` (`string`): The DNS name this record set will apply to.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `rrdatas` (`list`): The string data for the records in this record set whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding \\&#34; if you don&#39;t want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add \\&#34;\\&#34; inside the Terraform configuration string (e.g. &#34;first255characters\\&#34;\\&#34;morecharacters&#34;). When `null`, the `rrdatas` field will be omitted from the resulting object.\n  - `ttl` (`number`): The time-to-live of this record set (seconds). When `null`, the `ttl` field will be omitted from the resulting object.\n  - `type` (`string`): The DNS record set type.\n  - `routing_policy` (`list[obj]`): The configuration for steering traffic based on query. You can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type. When `null`, the `routing_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.new](#fn-routing_policynew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_record_set` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    managed_zone,
    name,
    type,
    project=null,
    routing_policy=null,
    rrdatas=null,
    ttl=null
  ):: std.prune(a={
    managed_zone: managed_zone,
    name: name,
    project: project,
    routing_policy: routing_policy,
    rrdatas: rrdatas,
    ttl: ttl,
    type: type,
  }),
  routing_policy:: {
    geo:: {
      health_checked_targets:: {
        internal_load_balancers:: {
          '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.geo.health_checked_targets.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_address` (`string`): The frontend IP address of the load balancer.\n  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]\n  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]\n  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.\n  - `port` (`string`): The configured port of the load balancer.\n  - `project` (`string`): The ID of the project in which the load balancer belongs.\n  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `internal_load_balancers` sub block.\n', args=[]),
          new(
            ip_address,
            ip_protocol,
            load_balancer_type,
            network_url,
            port,
            project,
            region=null
          ):: std.prune(a={
            ip_address: ip_address,
            ip_protocol: ip_protocol,
            load_balancer_type: load_balancer_type,
            network_url: network_url,
            port: port,
            project: project,
            region: region,
          }),
        },
        '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.geo.health_checked_targets.new` constructs a new object with attributes and blocks configured for the `health_checked_targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.geo.health_checked_targets.internal_load_balancers.new](#fn-routing_policyrouting_policygeointernal_load_balancersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `health_checked_targets` sub block.\n', args=[]),
        new(
          internal_load_balancers=null
        ):: std.prune(a={
          internal_load_balancers: internal_load_balancers,
        }),
      },
      '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.geo.new` constructs a new object with attributes and blocks configured for the `geo`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`string`): The location name defined in Google Cloud.\n  - `rrdatas` (`list`): Set the `rrdatas` field on the resulting object. When `null`, the `rrdatas` field will be omitted from the resulting object.\n  - `health_checked_targets` (`list[obj]`): For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item. When `null`, the `health_checked_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.geo.health_checked_targets.new](#fn-routing_policyrouting_policyhealth_checked_targetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `geo` sub block.\n', args=[]),
      new(
        location,
        health_checked_targets=null,
        rrdatas=null
      ):: std.prune(a={
        health_checked_targets: health_checked_targets,
        location: location,
        rrdatas: rrdatas,
      }),
    },
    '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.new` constructs a new object with attributes and blocks configured for the `routing_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_geo_fencing` (`bool`): Specifies whether to enable fencing for geo queries. When `null`, the `enable_geo_fencing` field will be omitted from the resulting object.\n  - `geo` (`list[obj]`): The configuration for Geo location based routing policy. When `null`, the `geo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.geo.new](#fn-routing_policygeonew) constructor.\n  - `primary_backup` (`list[obj]`): The configuration for a primary-backup policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy. When `null`, the `primary_backup` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.new](#fn-routing_policyprimary_backupnew) constructor.\n  - `wrr` (`list[obj]`): The configuration for Weighted Round Robin based routing policy. When `null`, the `wrr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.wrr.new](#fn-routing_policywrrnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `routing_policy` sub block.\n', args=[]),
    new(
      enable_geo_fencing=null,
      geo=null,
      primary_backup=null,
      wrr=null
    ):: std.prune(a={
      enable_geo_fencing: enable_geo_fencing,
      geo: geo,
      primary_backup: primary_backup,
      wrr: wrr,
    }),
    primary_backup:: {
      backup_geo:: {
        health_checked_targets:: {
          internal_load_balancers:: {
            '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_address` (`string`): The frontend IP address of the load balancer.\n  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]\n  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]\n  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.\n  - `port` (`string`): The configured port of the load balancer.\n  - `project` (`string`): The ID of the project in which the load balancer belongs.\n  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `internal_load_balancers` sub block.\n', args=[]),
            new(
              ip_address,
              ip_protocol,
              load_balancer_type,
              network_url,
              port,
              project,
              region=null
            ):: std.prune(a={
              ip_address: ip_address,
              ip_protocol: ip_protocol,
              load_balancer_type: load_balancer_type,
              network_url: network_url,
              port: port,
              project: project,
              region: region,
            }),
          },
          '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.new` constructs a new object with attributes and blocks configured for the `health_checked_targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.internal_load_balancers.new](#fn-routing_policyrouting_policyprimary_backupbackup_geointernal_load_balancersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `health_checked_targets` sub block.\n', args=[]),
          new(
            internal_load_balancers=null
          ):: std.prune(a={
            internal_load_balancers: internal_load_balancers,
          }),
        },
        '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.primary_backup.backup_geo.new` constructs a new object with attributes and blocks configured for the `backup_geo`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`string`): The location name defined in Google Cloud.\n  - `rrdatas` (`list`): Set the `rrdatas` field on the resulting object. When `null`, the `rrdatas` field will be omitted from the resulting object.\n  - `health_checked_targets` (`list[obj]`): For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item. When `null`, the `health_checked_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.backup_geo.health_checked_targets.new](#fn-routing_policyrouting_policyprimary_backuphealth_checked_targetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `backup_geo` sub block.\n', args=[]),
        new(
          location,
          health_checked_targets=null,
          rrdatas=null
        ):: std.prune(a={
          health_checked_targets: health_checked_targets,
          location: location,
          rrdatas: rrdatas,
        }),
      },
      '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.primary_backup.new` constructs a new object with attributes and blocks configured for the `primary_backup`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_geo_fencing_for_backups` (`bool`): Specifies whether to enable fencing for backup geo queries. When `null`, the `enable_geo_fencing_for_backups` field will be omitted from the resulting object.\n  - `trickle_ratio` (`number`): Specifies the percentage of traffic to send to the backup targets even when the primary targets are healthy. When `null`, the `trickle_ratio` field will be omitted from the resulting object.\n  - `backup_geo` (`list[obj]`): The backup geo targets, which provide a regional failover policy for the otherwise global primary targets. When `null`, the `backup_geo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.backup_geo.new](#fn-routing_policyrouting_policybackup_geonew) constructor.\n  - `primary` (`list[obj]`): The list of global primary targets to be health checked. When `null`, the `primary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.primary.new](#fn-routing_policyrouting_policyprimarynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `primary_backup` sub block.\n', args=[]),
      new(
        backup_geo=null,
        enable_geo_fencing_for_backups=null,
        primary=null,
        trickle_ratio=null
      ):: std.prune(a={
        backup_geo: backup_geo,
        enable_geo_fencing_for_backups: enable_geo_fencing_for_backups,
        primary: primary,
        trickle_ratio: trickle_ratio,
      }),
      primary:: {
        internal_load_balancers:: {
          '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.primary_backup.primary.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_address` (`string`): The frontend IP address of the load balancer.\n  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]\n  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]\n  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.\n  - `port` (`string`): The configured port of the load balancer.\n  - `project` (`string`): The ID of the project in which the load balancer belongs.\n  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `internal_load_balancers` sub block.\n', args=[]),
          new(
            ip_address,
            ip_protocol,
            load_balancer_type,
            network_url,
            port,
            project,
            region=null
          ):: std.prune(a={
            ip_address: ip_address,
            ip_protocol: ip_protocol,
            load_balancer_type: load_balancer_type,
            network_url: network_url,
            port: port,
            project: project,
            region: region,
          }),
        },
        '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.primary_backup.primary.new` constructs a new object with attributes and blocks configured for the `primary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.primary_backup.primary.internal_load_balancers.new](#fn-routing_policyrouting_policyprimary_backupinternal_load_balancersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `primary` sub block.\n', args=[]),
        new(
          internal_load_balancers=null
        ):: std.prune(a={
          internal_load_balancers: internal_load_balancers,
        }),
      },
    },
    wrr:: {
      health_checked_targets:: {
        internal_load_balancers:: {
          '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.wrr.health_checked_targets.internal_load_balancers.new` constructs a new object with attributes and blocks configured for the `internal_load_balancers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_address` (`string`): The frontend IP address of the load balancer.\n  - `ip_protocol` (`string`): The configured IP protocol of the load balancer. This value is case-sensitive. Possible values: [&#34;tcp&#34;, &#34;udp&#34;]\n  - `load_balancer_type` (`string`): The type of load balancer. This value is case-sensitive. Possible values: [&#34;regionalL4ilb&#34;]\n  - `network_url` (`string`): The fully qualified url of the network in which the load balancer belongs. This should be formatted like `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`.\n  - `port` (`string`): The configured port of the load balancer.\n  - `project` (`string`): The ID of the project in which the load balancer belongs.\n  - `region` (`string`): The region of the load balancer. Only needed for regional load balancers. When `null`, the `region` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `internal_load_balancers` sub block.\n', args=[]),
          new(
            ip_address,
            ip_protocol,
            load_balancer_type,
            network_url,
            port,
            project,
            region=null
          ):: std.prune(a={
            ip_address: ip_address,
            ip_protocol: ip_protocol,
            load_balancer_type: load_balancer_type,
            network_url: network_url,
            port: port,
            project: project,
            region: region,
          }),
        },
        '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.wrr.health_checked_targets.new` constructs a new object with attributes and blocks configured for the `health_checked_targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_load_balancers` (`list[obj]`): The list of internal load balancers to health check. When `null`, the `internal_load_balancers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.wrr.health_checked_targets.internal_load_balancers.new](#fn-routing_policyrouting_policywrrinternal_load_balancersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `health_checked_targets` sub block.\n', args=[]),
        new(
          internal_load_balancers=null
        ):: std.prune(a={
          internal_load_balancers: internal_load_balancers,
        }),
      },
      '#new':: d.fn(help='\n`google.dns_record_set.routing_policy.wrr.new` constructs a new object with attributes and blocks configured for the `wrr`\nTerraform sub block.\n\n\n\n**Args**:\n  - `rrdatas` (`list`): Set the `rrdatas` field on the resulting object. When `null`, the `rrdatas` field will be omitted from the resulting object.\n  - `weight` (`number`): The ratio of traffic routed to the target.\n  - `health_checked_targets` (`list[obj]`): The list of targets to be health checked. Note that if DNSSEC is enabled for this zone, only one of `rrdatas` or `health_checked_targets` can be set. When `null`, the `health_checked_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_record_set.routing_policy.wrr.health_checked_targets.new](#fn-routing_policyrouting_policyhealth_checked_targetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `wrr` sub block.\n', args=[]),
      new(
        weight,
        health_checked_targets=null,
        rrdatas=null
      ):: std.prune(a={
        health_checked_targets: health_checked_targets,
        rrdatas: rrdatas,
        weight: weight,
      }),
    },
  },
  '#withManagedZone':: d.fn(help='`google.string.withManagedZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the managed_zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `managed_zone` field.\n', args=[]),
  withManagedZone(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          managed_zone: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRoutingPolicy':: d.fn(help='`google.list[obj].withRoutingPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the routing_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRoutingPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `routing_policy` field.\n', args=[]),
  withRoutingPolicy(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          routing_policy: value,
        },
      },
    },
  },
  '#withRoutingPolicyMixin':: d.fn(help='`google.list[obj].withRoutingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the routing_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRoutingPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `routing_policy` field.\n', args=[]),
  withRoutingPolicyMixin(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          routing_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRrdatas':: d.fn(help='`google.list.withRrdatas` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the rrdatas field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `rrdatas` field.\n', args=[]),
  withRrdatas(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          rrdatas: value,
        },
      },
    },
  },
  '#withTtl':: d.fn(help='`google.number.withTtl` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the ttl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `ttl` field.\n', args=[]),
  withTtl(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          ttl: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
