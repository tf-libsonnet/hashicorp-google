local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  container_image:: {
    new(
      repository,
      tag=null
    ):: std.prune(a={
      repository: repository,
      tag: tag,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    container_image=null,
    description=null,
    display_name=null,
    post_startup_script=null,
    project=null,
    timeouts=null,
    vm_image=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      container_image=container_image,
      description=description,
      display_name=display_name,
      location=location,
      name=name,
      post_startup_script=post_startup_script,
      project=project,
      timeouts=timeouts,
      vm_image=vm_image
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    container_image=null,
    description=null,
    display_name=null,
    post_startup_script=null,
    project=null,
    timeouts=null,
    vm_image=null
  ):: std.prune(a={
    container_image: container_image,
    description: description,
    display_name: display_name,
    location: location,
    name: name,
    post_startup_script: post_startup_script,
    project: project,
    timeouts: timeouts,
    vm_image: vm_image,
  }),
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
  vm_image:: {
    new(
      project,
      image_family=null,
      image_name=null
    ):: std.prune(a={
      image_family: image_family,
      image_name: image_name,
      project: project,
    }),
  },
  withContainerImage(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          container_image: value,
        },
      },
    },
  },
  withContainerImageMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          container_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPostStartupScript(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          post_startup_script: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVmImage(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          vm_image: value,
        },
      },
    },
  },
  withVmImageMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_environment+: {
        [resourceLabel]+: {
          vm_image+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
