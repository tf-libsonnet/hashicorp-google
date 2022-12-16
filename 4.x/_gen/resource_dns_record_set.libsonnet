local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
        new(
          internal_load_balancers=null
        ):: std.prune(a={
          internal_load_balancers: internal_load_balancers,
        }),
      },
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
          new(
            internal_load_balancers=null
          ):: std.prune(a={
            internal_load_balancers: internal_load_balancers,
          }),
        },
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
        new(
          internal_load_balancers=null
        ):: std.prune(a={
          internal_load_balancers: internal_load_balancers,
        }),
      },
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
  withManagedZone(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          managed_zone: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRoutingPolicy(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          routing_policy: value,
        },
      },
    },
  },
  withRoutingPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          routing_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRrdatas(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          rrdatas: value,
        },
      },
    },
  },
  withTtl(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          ttl: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_dns_record_set+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
