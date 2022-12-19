local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='monitoring_cluster_istio_service', url='', help='`monitoring_cluster_istio_service` represents the `google_monitoring_cluster_istio_service` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.monitoring_cluster_istio_service.new` injects a new `data_google_monitoring_cluster_istio_service` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.monitoring_cluster_istio_service.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.monitoring_cluster_istio_service` using the reference:\n\n    $._ref.data_google_monitoring_cluster_istio_service.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_monitoring_cluster_istio_service.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `cluster_name` (`string`): The name of the Kubernetes cluster in which this Istio service is defined. \n                        Corresponds to the clusterName resource label in k8s_cluster resources.\n  - `location` (`string`): The location of the Kubernetes cluster in which this Istio service is defined. \n                        Corresponds to the location resource label in k8s_cluster resources.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_name` (`string`): The name of the Istio service underlying this service. \n                        Corresponds to the destination_service_name metric label in Istio metrics.\n  - `service_namespace` (`string`): The namespace of the Istio service underlying this service. \n                        Corresponds to the destination_service_namespace metric label in Istio metrics.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    cluster_name,
    location,
    service_name,
    service_namespace,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_monitoring_cluster_istio_service',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      cluster_name=cluster_name,
      location=location,
      project=project,
      service_name=service_name,
      service_namespace=service_namespace
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.monitoring_cluster_istio_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_cluster_istio_service`\nTerraform data source.\n\nUnlike [google.data.monitoring_cluster_istio_service.new](#fn-monitoring_cluster_istio_servicenew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_name` (`string`): The name of the Kubernetes cluster in which this Istio service is defined. \n                        Corresponds to the clusterName resource label in k8s_cluster resources.\n  - `location` (`string`): The location of the Kubernetes cluster in which this Istio service is defined. \n                        Corresponds to the location resource label in k8s_cluster resources.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_name` (`string`): The name of the Istio service underlying this service. \n                        Corresponds to the destination_service_name metric label in Istio metrics.\n  - `service_namespace` (`string`): The namespace of the Istio service underlying this service. \n                        Corresponds to the destination_service_namespace metric label in Istio metrics.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_cluster_istio_service` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_name,
    location,
    service_name,
    service_namespace,
    project=null
  ):: std.prune(a={
    cluster_name: cluster_name,
    location: location,
    project: project,
    service_name: service_name,
    service_namespace: service_namespace,
  }),
  '#withClusterName':: d.fn(help='`google.string.withClusterName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the cluster_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_name` field.\n', args=[]),
  withClusterName(dataSrcLabel, value): {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          cluster_name: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceName':: d.fn(help='`google.string.withServiceName` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the service_name field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_name` field.\n', args=[]),
  withServiceName(dataSrcLabel, value): {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          service_name: value,
        },
      },
    },
  },
  '#withServiceNamespace':: d.fn(help='`google.string.withServiceNamespace` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the service_namespace field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_namespace` field.\n', args=[]),
  withServiceNamespace(dataSrcLabel, value): {
    data+: {
      google_monitoring_cluster_istio_service+: {
        [dataSrcLabel]+: {
          service_namespace: value,
        },
      },
    },
  },
}
