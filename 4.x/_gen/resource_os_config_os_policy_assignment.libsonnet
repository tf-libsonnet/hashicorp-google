local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  instance_filter:: {
    exclusion_labels:: {
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
    inclusion_labels:: {
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
    inventories:: {
      new(
        os_short_name,
        os_version=null
      ):: std.prune(a={
        os_short_name: os_short_name,
        os_version: os_version,
      }),
    },
    new(
      all=null,
      exclusion_labels=null,
      inclusion_labels=null,
      inventories=null
    ):: std.prune(a={
      all: all,
      exclusion_labels: exclusion_labels,
      inclusion_labels: inclusion_labels,
      inventories: inventories,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    description=null,
    instance_filter=null,
    os_policies=null,
    project=null,
    rollout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_config_os_policy_assignment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      instance_filter=instance_filter,
      location=location,
      name=name,
      os_policies=os_policies,
      project=project,
      rollout=rollout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    description=null,
    instance_filter=null,
    os_policies=null,
    project=null,
    rollout=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    instance_filter: instance_filter,
    location: location,
    name: name,
    os_policies: os_policies,
    project: project,
    rollout: rollout,
    timeouts: timeouts,
  }),
  os_policies:: {
    new(
      mode,
      allow_no_resource_group_match=null,
      description=null,
      resource_groups=null
    ):: std.prune(a={
      allow_no_resource_group_match: allow_no_resource_group_match,
      description: description,
      mode: mode,
      resource_groups: resource_groups,
    }),
    resource_groups:: {
      inventory_filters:: {
        new(
          os_short_name,
          os_version=null
        ):: std.prune(a={
          os_short_name: os_short_name,
          os_version: os_version,
        }),
      },
      new(
        inventory_filters=null,
        resources=null
      ):: std.prune(a={
        inventory_filters: inventory_filters,
        resources: resources,
      }),
      resources:: {
        exec:: {
          enforce:: {
            file:: {
              gcs:: {
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
            new(
              interpreter,
              args=null,
              file=null,
              output_file_path=null,
              script=null
            ):: std.prune(a={
              args: args,
              file: file,
              interpreter: interpreter,
              output_file_path: output_file_path,
              script: script,
            }),
          },
          new(
            enforce=null,
            validate=null
          ):: std.prune(a={
            enforce: enforce,
            validate: validate,
          }),
          validate:: {
            file:: {
              gcs:: {
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
            new(
              interpreter,
              args=null,
              file=null,
              output_file_path=null,
              script=null
            ):: std.prune(a={
              args: args,
              file: file,
              interpreter: interpreter,
              output_file_path: output_file_path,
              script: script,
            }),
          },
        },
        file:: {
          file:: {
            gcs:: {
              new(
                bucket,
                object,
                generation=null
              ):: std.prune(a={
                bucket: bucket,
                generation: generation,
                object: object,
              }),
            },
            new(
              allow_insecure=null,
              gcs=null,
              local_path=null,
              remote=null
            ):: std.prune(a={
              allow_insecure: allow_insecure,
              gcs: gcs,
              local_path: local_path,
              remote: remote,
            }),
            remote:: {
              new(
                uri,
                sha256_checksum=null
              ):: std.prune(a={
                sha256_checksum: sha256_checksum,
                uri: uri,
              }),
            },
          },
          new(
            path,
            state,
            content=null,
            file=null
          ):: std.prune(a={
            content: content,
            file: file,
            path: path,
            state: state,
          }),
        },
        new(
          exec=null,
          file=null,
          pkg=null,
          repository=null
        ):: std.prune(a={
          exec: exec,
          file: file,
          pkg: pkg,
          repository: repository,
        }),
        pkg:: {
          apt:: {
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          deb:: {
            new(
              pull_deps=null,
              source=null
            ):: std.prune(a={
              pull_deps: pull_deps,
              source: source,
            }),
            source:: {
              gcs:: {
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
          },
          googet:: {
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          msi:: {
            new(
              properties=null,
              source=null
            ):: std.prune(a={
              properties: properties,
              source: source,
            }),
            source:: {
              gcs:: {
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
          },
          new(
            desired_state,
            apt=null,
            deb=null,
            googet=null,
            msi=null,
            rpm=null,
            yum=null,
            zypper=null
          ):: std.prune(a={
            apt: apt,
            deb: deb,
            desired_state: desired_state,
            googet: googet,
            msi: msi,
            rpm: rpm,
            yum: yum,
            zypper: zypper,
          }),
          rpm:: {
            new(
              pull_deps=null,
              source=null
            ):: std.prune(a={
              pull_deps: pull_deps,
              source: source,
            }),
            source:: {
              gcs:: {
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
          },
          yum:: {
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          zypper:: {
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
        },
        repository:: {
          apt:: {
            new(
              archive_type,
              components,
              distribution,
              uri,
              gpg_key=null
            ):: std.prune(a={
              archive_type: archive_type,
              components: components,
              distribution: distribution,
              gpg_key: gpg_key,
              uri: uri,
            }),
          },
          goo:: {
            new(
              name,
              url
            ):: std.prune(a={
              name: name,
              url: url,
            }),
          },
          new(
            apt=null,
            goo=null,
            yum=null,
            zypper=null
          ):: std.prune(a={
            apt: apt,
            goo: goo,
            yum: yum,
            zypper: zypper,
          }),
          yum:: {
            new(
              base_url,
              display_name=null,
              gpg_keys=null
            ):: std.prune(a={
              base_url: base_url,
              display_name: display_name,
              gpg_keys: gpg_keys,
            }),
          },
          zypper:: {
            new(
              base_url,
              display_name=null,
              gpg_keys=null
            ):: std.prune(a={
              base_url: base_url,
              display_name: display_name,
              gpg_keys: gpg_keys,
            }),
          },
        },
      },
    },
  },
  rollout:: {
    disruption_budget:: {
      new(
        fixed=null,
        percent=null
      ):: std.prune(a={
        fixed: fixed,
        percent: percent,
      }),
    },
    new(
      min_wait_duration,
      disruption_budget=null
    ):: std.prune(a={
      disruption_budget: disruption_budget,
      min_wait_duration: min_wait_duration,
    }),
  },
  timeouts:: {
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withInstanceFilter(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          instance_filter: value,
        },
      },
    },
  },
  withInstanceFilterMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          instance_filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOsPolicies(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          os_policies: value,
        },
      },
    },
  },
  withOsPoliciesMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          os_policies+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRollout(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          rollout: value,
        },
      },
    },
  },
  withRolloutMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          rollout+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
