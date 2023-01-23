local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_loss_prevention_deidentify_template', url='', help='`data_loss_prevention_deidentify_template` represents the `google_data_loss_prevention_deidentify_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  deidentify_config:: {
    info_type_transformations:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.new` constructs a new object with attributes and blocks configured for the `info_type_transformations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `transformations` (`list[obj]`): Transformation for each infoType. Cannot specify more than one for a given infoType. When `null`, the `transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.new](#fn-deidentify_configdeidentify_configtransformationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `info_type_transformations` sub block.\n', args=[]),
      new(
        transformations=null
      ):: std.prune(a={
        transformations: transformations,
      }),
      transformations:: {
        info_types:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.new` constructs a new object with attributes and blocks configured for the `transformations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_types` (`list[obj]`): InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to\nall findings that correspond to infoTypes that were requested in InspectConfig. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.info_types.new](#fn-deidentify_configdeidentify_configinfo_type_transformationsinfo_typesnew) constructor.\n  - `primitive_transformation` (`list[obj]`): Primitive transformation to apply to the infoType.\nThe &#39;primitive_transformation&#39; block must only contain one argument, corresponding to the type of transformation. When `null`, the `primitive_transformation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.new](#fn-deidentify_configdeidentify_configinfo_type_transformationsprimitive_transformationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transformations` sub block.\n', args=[]),
        new(
          info_types=null,
          primitive_transformation=null
        ):: std.prune(a={
          info_types: info_types,
          primitive_transformation: primitive_transformation,
        }),
        primitive_transformation:: {
          character_mask_config:: {
            characters_to_ignore:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new` constructs a new object with attributes and blocks configured for the `characters_to_ignore`\nTerraform sub block.\n\n\n\n**Args**:\n  - `characters_to_skip` (`string`): Characters to not transform when masking. When `null`, the `characters_to_skip` field will be omitted from the resulting object.\n  - `common_characters_to_ignore` (`string`): Common characters to not transform when masking. Useful to avoid removing punctuation. Possible values: [&#34;NUMERIC&#34;, &#34;ALPHA_UPPER_CASE&#34;, &#34;ALPHA_LOWER_CASE&#34;, &#34;PUNCTUATION&#34;, &#34;WHITESPACE&#34;] When `null`, the `common_characters_to_ignore` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `characters_to_ignore` sub block.\n', args=[]),
              new(
                characters_to_skip=null,
                common_characters_to_ignore=null
              ):: std.prune(a={
                characters_to_skip: characters_to_skip,
                common_characters_to_ignore: common_characters_to_ignore,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new` constructs a new object with attributes and blocks configured for the `character_mask_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `masking_character` (`string`): Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string\nsuch as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for\nstrings, and 0 for digits. When `null`, the `masking_character` field will be omitted from the resulting object.\n  - `number_to_mask` (`number`): Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. When `null`, the `number_to_mask` field will be omitted from the resulting object.\n  - `reverse_order` (`bool`): Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is &#39;false&#39;, then the\ninput string &#39;1234-5678-9012-3456&#39; is masked as &#39;00000000000000-3456&#39;. When `null`, the `reverse_order` field will be omitted from the resulting object.\n  - `characters_to_ignore` (`list[obj]`): Characters to skip when doing de-identification of a value. These will be left alone and skipped. When `null`, the `characters_to_ignore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.characters_to_ignore.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcharacters_to_ignorenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `character_mask_config` sub block.\n', args=[]),
            new(
              characters_to_ignore=null,
              masking_character=null,
              number_to_mask=null,
              reverse_order=null
            ):: std.prune(a={
              characters_to_ignore: characters_to_ignore,
              masking_character: masking_character,
              number_to_mask: number_to_mask,
              reverse_order: reverse_order,
            }),
          },
          crypto_deterministic_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): KMS wrapped key.\nInclude to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt\nFor more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).\nNote: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_deterministic_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new` constructs a new object with attributes and blocks configured for the `crypto_deterministic_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `context` (`list[obj]`): A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.\n\nIf the context is not set, plaintext would be used as is for encryption. If the context is set but:\n\n1.  there is no record present when transforming a given value or\n2.  the field is not present when transforming a given value,\n\nplaintext would be used as is for encryption.\n\nNote that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.context.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): The key used by the encryption function. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_keynew) constructor.\n  - `surrogate_info_type` (`list[obj]`): The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}\n\nFor example, if the name of custom info type is &#39;MY\\_TOKEN\\_INFO\\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\\_TOKEN\\_INFO\\_TYPE(3):abc&#39;\n\nThis annotation identifies the surrogate when inspecting content using the custom info type &#39;Surrogate&#39;. This facilitates reversal of the surrogate when it occurs in free text.\n\nNote: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.\n\nIn order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either\n\n*   reverse a surrogate that does not correspond to an actual identifier\n*   be unable to parse the surrogate and result in an error\n\nTherefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\\_TOKEN\\_TYPE. When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationsurrogate_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_deterministic_config` sub block.\n', args=[]),
            new(
              context=null,
              crypto_key=null,
              surrogate_info_type=null
            ):: std.prune(a={
              context: context,
              crypto_key: crypto_key,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n  - `version` (`string`): Optional version name for this InfoType. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `surrogate_info_type` sub block.\n', args=[]),
              new(
                name=null,
                version=null
              ):: std.prune(a={
                name: name,
                version: version,
              }),
            },
          },
          crypto_replace_ffx_fpe_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): KMS wrapped key.\nInclude to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt\nFor more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).\nNote: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_replace_ffx_fpe_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new` constructs a new object with attributes and blocks configured for the `crypto_replace_ffx_fpe_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `common_alphabet` (`string`): Common alphabets. Possible values: [&#34;FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED&#34;, &#34;NUMERIC&#34;, &#34;HEXADECIMAL&#34;, &#34;UPPER_CASE_ALPHA_NUMERIC&#34;, &#34;ALPHA_NUMERIC&#34;] When `null`, the `common_alphabet` field will be omitted from the resulting object.\n  - `custom_alphabet` (`string`): This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \\[2, 95\\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:\n\n&#39;&#39;0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~&#39;!@#$%^&amp;*()_-&#43;={[}]|:;&#34;&#39;&lt;,&gt;.?/&#39;&#39; When `null`, the `custom_alphabet` field will be omitted from the resulting object.\n  - `radix` (`number`): The native way to select the alphabet. Must be in the range \\[2, 95\\]. When `null`, the `radix` field will be omitted from the resulting object.\n  - `context` (`list[obj]`): The &#39;tweak&#39;, a context may be used for higher security since the same identifier in two different contexts won&#39;t be given the same surrogate. If the context is not set, a default tweak will be used.\n\nIf the context is set but:\n\n1.  there is no record present when transforming a given value or\n2.  the field is not present when transforming a given value,\n\na default tweak will be used.\n\nNote that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. Currently, the referenced field may be of value type integer or string.\n\nThe tweak is constructed as a sequence of bytes in big endian byte order such that:\n\n*   a 64 bit integer is encoded followed by a single byte of value 1\n*   a string is encoded in UTF-8 format followed by a single byte of value 2 When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): The key used by the encryption algorithm. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationcrypto_keynew) constructor.\n  - `surrogate_info_type` (`list[obj]`): The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\\_type\\_name(surrogate\\_character\\_count):surrogate\n\nFor example, if the name of custom infoType is &#39;MY\\_TOKEN\\_INFO\\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\\_TOKEN\\_INFO\\_TYPE(3):abc&#39;\n\nThis annotation identifies the surrogate when inspecting content using the custom infoType [&#39;SurrogateType&#39;](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.\n\nIn order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\\_TOKEN\\_TYPE When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationsurrogate_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_replace_ffx_fpe_config` sub block.\n', args=[]),
            new(
              common_alphabet=null,
              context=null,
              crypto_key=null,
              custom_alphabet=null,
              radix=null,
              surrogate_info_type=null
            ):: std.prune(a={
              common_alphabet: common_alphabet,
              context: context,
              crypto_key: crypto_key,
              custom_alphabet: custom_alphabet,
              radix: radix,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n  - `version` (`string`): Optional version name for this InfoType. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `surrogate_info_type` sub block.\n', args=[]),
              new(
                name=null,
                version=null
              ):: std.prune(a={
                name: name,
                version: version,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.new` constructs a new object with attributes and blocks configured for the `primitive_transformation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `replace_with_info_type_config` (`bool`): Replace each matching finding with the name of the info type. When `null`, the `replace_with_info_type_config` field will be omitted from the resulting object.\n  - `character_mask_config` (`list[obj]`): Partially mask a string by replacing a given number of characters with a fixed character.\nMasking can start from the beginning or end of the string. When `null`, the `character_mask_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.character_mask_config.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationscharacter_mask_confignew) constructor.\n  - `crypto_deterministic_config` (`list[obj]`): Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). When `null`, the `crypto_deterministic_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationscrypto_deterministic_confignew) constructor.\n  - `crypto_replace_ffx_fpe_config` (`list[obj]`): Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the &#39;content.reidentify&#39; API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.\n\nNote: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. When `null`, the `crypto_replace_ffx_fpe_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationscrypto_replace_ffx_fpe_confignew) constructor.\n  - `replace_config` (`list[obj]`): Replace each input value with a given value. When `null`, the `replace_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsreplace_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `primitive_transformation` sub block.\n', args=[]),
          new(
            character_mask_config=null,
            crypto_deterministic_config=null,
            crypto_replace_ffx_fpe_config=null,
            replace_config=null,
            replace_with_info_type_config=null
          ):: std.prune(a={
            character_mask_config: character_mask_config,
            crypto_deterministic_config: crypto_deterministic_config,
            crypto_replace_ffx_fpe_config: crypto_replace_ffx_fpe_config,
            replace_config: replace_config,
            replace_with_info_type_config: replace_with_info_type_config,
          }),
          replace_config:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new` constructs a new object with attributes and blocks configured for the `replace_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `new_value` (`list[obj]`): Replace each input value with a given value.\nThe &#39;new_value&#39; block must only contain one argument. For example when replacing the contents of a string-type field, only &#39;string_value&#39; should be set. When `null`, the `new_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationnew_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replace_config` sub block.\n', args=[]),
            new(
              new_value=null
            ):: std.prune(a={
              new_value: new_value,
            }),
            new_value:: {
              date_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a\nyear by itself or a year and month where the day is not significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                new(
                  day=null,
                  month=null,
                  year=null
                ):: std.prune(a={
                  day: day,
                  month: month,
                  year: year,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.new` constructs a new object with attributes and blocks configured for the `new_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): An integer value. When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits.\nExamples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.date_value.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_configdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new](#fn-deidentify_configdeidentify_configinfo_type_transformationstransformationsprimitive_transformationreplace_configtime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `new_value` sub block.\n', args=[]),
              new(
                boolean_value=null,
                date_value=null,
                day_of_week_value=null,
                float_value=null,
                integer_value=null,
                string_value=null,
                time_value=null,
                timestamp_value=null
              ):: std.prune(a={
                boolean_value: boolean_value,
                date_value: date_value,
                day_of_week_value: day_of_week_value,
                float_value: float_value,
                integer_value: integer_value,
                string_value: string_value,
                time_value: time_value,
                timestamp_value: timestamp_value,
              }),
              time_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.transformations.primitive_transformation.replace_config.new_value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                new(
                  hours=null,
                  minutes=null,
                  nanos=null,
                  seconds=null
                ):: std.prune(a={
                  hours: hours,
                  minutes: minutes,
                  nanos: nanos,
                  seconds: seconds,
                }),
              },
            },
          },
        },
      },
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.new` constructs a new object with attributes and blocks configured for the `deidentify_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_type_transformations` (`list[obj]`): Treat the dataset as free-form text and apply the same free text transformation everywhere When `null`, the `info_type_transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.info_type_transformations.new](#fn-deidentify_configinfo_type_transformationsnew) constructor.\n  - `record_transformations` (`list[obj]`): Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table. When `null`, the `record_transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.new](#fn-deidentify_configrecord_transformationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deidentify_config` sub block.\n', args=[]),
    new(
      info_type_transformations=null,
      record_transformations=null
    ):: std.prune(a={
      info_type_transformations: info_type_transformations,
      record_transformations: record_transformations,
    }),
    record_transformations:: {
      field_transformations:: {
        condition:: {
          expressions:: {
            conditions:: {
              conditions:: {
                field:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.field.new` constructs a new object with attributes and blocks configured for the `field`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `field` sub block.\n', args=[]),
                  new(
                    name=null
                  ):: std.prune(a={
                    name: name,
                  }),
                },
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `operator` (`string`): Operator used to compare the field or infoType to the value. Possible values: [&#34;EQUAL_TO&#34;, &#34;NOT_EQUAL_TO&#34;, &#34;GREATER_THAN&#34;, &#34;LESS_THAN&#34;, &#34;GREATER_THAN_OR_EQUALS&#34;, &#34;LESS_THAN_OR_EQUALS&#34;, &#34;EXISTS&#34;]\n  - `field` (`list[obj]`): Field within the record this condition is evaluated against. When `null`, the `field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.field.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsconditionexpressionsconditionsfieldnew) constructor.\n  - `value` (`list[obj]`): Value to compare against.\nThe &#39;value&#39; block must only contain one argument. For example when a condition is evaluated against a string-type field, only &#39;string_value&#39; should be set.\nThis argument is mandatory, except for conditions using the &#39;EXISTS&#39; operator. When `null`, the `value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsconditionexpressionsconditionsvaluenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `conditions` sub block.\n', args=[]),
                new(
                  operator,
                  field=null,
                  value=null
                ):: std.prune(a={
                  field: field,
                  operator: operator,
                  value: value,
                }),
                value:: {
                  date_value:: {
                    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                    new(
                      day=null,
                      month=null,
                      year=null
                    ):: std.prune(a={
                      day: day,
                      month: month,
                      year: year,
                    }),
                  },
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.new` constructs a new object with attributes and blocks configured for the `value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsconditionexpressionsconditionsconditionsdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsconditionexpressionsconditionsconditionstime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `value` sub block.\n', args=[]),
                  new(
                    boolean_value=null,
                    date_value=null,
                    day_of_week_value=null,
                    float_value=null,
                    integer_value=null,
                    string_value=null,
                    time_value=null,
                    timestamp_value=null
                  ):: std.prune(a={
                    boolean_value: boolean_value,
                    date_value: date_value,
                    day_of_week_value: day_of_week_value,
                    float_value: float_value,
                    integer_value: integer_value,
                    string_value: string_value,
                    time_value: time_value,
                    timestamp_value: timestamp_value,
                  }),
                  time_value:: {
                    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                    new(
                      hours=null,
                      minutes=null,
                      nanos=null,
                      seconds=null
                    ):: std.prune(a={
                      hours: hours,
                      minutes: minutes,
                      nanos: nanos,
                      seconds: seconds,
                    }),
                  },
                },
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `conditions` (`list[obj]`): A collection of conditions. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.conditions.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsconditionexpressionsconditionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `conditions` sub block.\n', args=[]),
              new(
                conditions=null
              ):: std.prune(a={
                conditions: conditions,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.new` constructs a new object with attributes and blocks configured for the `expressions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `logical_operator` (`string`): The operator to apply to the result of conditions. Default and currently only supported value is AND Default value: &#34;AND&#34; Possible values: [&#34;AND&#34;] When `null`, the `logical_operator` field will be omitted from the resulting object.\n  - `conditions` (`list[obj]`): Conditions to apply to the expression. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.conditions.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsconditionconditionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `expressions` sub block.\n', args=[]),
            new(
              conditions=null,
              logical_operator=null
            ):: std.prune(a={
              conditions: conditions,
              logical_operator: logical_operator,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expressions` (`list[obj]`): An expression. When `null`, the `expressions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.expressions.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsexpressionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
          new(
            expressions=null
          ):: std.prune(a={
            expressions: expressions,
          }),
        },
        fields:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.fields.new` constructs a new object with attributes and blocks configured for the `fields`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fields` sub block.\n', args=[]),
          new(
            name=null
          ):: std.prune(a={
            name: name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.new` constructs a new object with attributes and blocks configured for the `field_transformations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `condition` (`list[obj]`): Only apply the transformation if the condition evaluates to true for the given RecordCondition. The conditions are allowed to reference fields that are not used in the actual transformation.\nExample Use Cases:\n- Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range.\n- Redact a field if the date of birth field is greater than 85. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.condition.new](#fn-deidentify_configdeidentify_configrecord_transformationsconditionnew) constructor.\n  - `fields` (`list[obj]`): Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId.\nFieldId name matching ignores the index. For example, instead of &#34;contact.nums[0].type&#34;, use &#34;contact.nums.type&#34;. When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.fields.new](#fn-deidentify_configdeidentify_configrecord_transformationsfieldsnew) constructor.\n  - `primitive_transformation` (`list[obj]`): Apply the transformation to the entire field.\nThe &#39;primitive_transformation&#39; block must only contain one argument, corresponding to the type of transformation. When `null`, the `primitive_transformation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.new](#fn-deidentify_configdeidentify_configrecord_transformationsprimitive_transformationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `field_transformations` sub block.\n', args=[]),
        new(
          condition=null,
          fields=null,
          primitive_transformation=null
        ):: std.prune(a={
          condition: condition,
          fields: fields,
          primitive_transformation: primitive_transformation,
        }),
        primitive_transformation:: {
          bucketing_config:: {
            buckets:: {
              max:: {
                date_value:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                  new(
                    day=null,
                    month=null,
                    year=null
                  ):: std.prune(a={
                    day: day,
                    month: month,
                    year: year,
                  }),
                },
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.new` constructs a new object with attributes and blocks configured for the `max`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configbucketsdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configbucketstime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `max` sub block.\n', args=[]),
                new(
                  boolean_value=null,
                  date_value=null,
                  day_of_week_value=null,
                  float_value=null,
                  integer_value=null,
                  string_value=null,
                  time_value=null,
                  timestamp_value=null
                ):: std.prune(a={
                  boolean_value: boolean_value,
                  date_value: date_value,
                  day_of_week_value: day_of_week_value,
                  float_value: float_value,
                  integer_value: integer_value,
                  string_value: string_value,
                  time_value: time_value,
                  timestamp_value: timestamp_value,
                }),
                time_value:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                  new(
                    hours=null,
                    minutes=null,
                    nanos=null,
                    seconds=null
                  ):: std.prune(a={
                    hours: hours,
                    minutes: minutes,
                    nanos: nanos,
                    seconds: seconds,
                  }),
                },
              },
              min:: {
                date_value:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                  new(
                    day=null,
                    month=null,
                    year=null
                  ):: std.prune(a={
                    day: day,
                    month: month,
                    year: year,
                  }),
                },
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.new` constructs a new object with attributes and blocks configured for the `min`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configbucketsdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configbucketstime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `min` sub block.\n', args=[]),
                new(
                  boolean_value=null,
                  date_value=null,
                  day_of_week_value=null,
                  float_value=null,
                  integer_value=null,
                  string_value=null,
                  time_value=null,
                  timestamp_value=null
                ):: std.prune(a={
                  boolean_value: boolean_value,
                  date_value: date_value,
                  day_of_week_value: day_of_week_value,
                  float_value: float_value,
                  integer_value: integer_value,
                  string_value: string_value,
                  time_value: time_value,
                  timestamp_value: timestamp_value,
                }),
                time_value:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                  new(
                    hours=null,
                    minutes=null,
                    nanos=null,
                    seconds=null
                  ):: std.prune(a={
                    hours: hours,
                    minutes: minutes,
                    nanos: nanos,
                    seconds: seconds,
                  }),
                },
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.new` constructs a new object with attributes and blocks configured for the `buckets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max` (`list[obj]`): Upper bound of the range, exclusive; type must match min.\nThe &#39;max&#39; block must only contain one argument. See the &#39;bucketing_config&#39; block description for more information about choosing a data type. When `null`, the `max` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.max.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configmaxnew) constructor.\n  - `min` (`list[obj]`): Lower bound of the range, inclusive. Type should be the same as max if used.\nThe &#39;min&#39; block must only contain one argument. See the &#39;bucketing_config&#39; block description for more information about choosing a data type. When `null`, the `min` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.min.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configminnew) constructor.\n  - `replacement_value` (`list[obj]`): Replacement value for this bucket.\nThe &#39;replacement_value&#39; block must only contain one argument. When `null`, the `replacement_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configreplacement_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `buckets` sub block.\n', args=[]),
              new(
                max=null,
                min=null,
                replacement_value=null
              ):: std.prune(a={
                max: max,
                min: min,
                replacement_value: replacement_value,
              }),
              replacement_value:: {
                date_value:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                  new(
                    day=null,
                    month=null,
                    year=null
                  ):: std.prune(a={
                    day: day,
                    month: month,
                    year: year,
                  }),
                },
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.new` constructs a new object with attributes and blocks configured for the `replacement_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configbucketsdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketing_configbucketstime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replacement_value` sub block.\n', args=[]),
                new(
                  boolean_value=null,
                  date_value=null,
                  day_of_week_value=null,
                  float_value=null,
                  integer_value=null,
                  string_value=null,
                  time_value=null,
                  timestamp_value=null
                ):: std.prune(a={
                  boolean_value: boolean_value,
                  date_value: date_value,
                  day_of_week_value: day_of_week_value,
                  float_value: float_value,
                  integer_value: integer_value,
                  string_value: string_value,
                  time_value: time_value,
                  timestamp_value: timestamp_value,
                }),
                time_value:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.replacement_value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                  new(
                    hours=null,
                    minutes=null,
                    nanos=null,
                    seconds=null
                  ):: std.prune(a={
                    hours: hours,
                    minutes: minutes,
                    nanos: nanos,
                    seconds: seconds,
                  }),
                },
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.new` constructs a new object with attributes and blocks configured for the `bucketing_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `buckets` (`list[obj]`): Set of buckets. Ranges must be non-overlapping.\nBucket is represented as a range, along with replacement values. When `null`, the `buckets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.buckets.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationbucketsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bucketing_config` sub block.\n', args=[]),
            new(
              buckets=null
            ):: std.prune(a={
              buckets: buckets,
            }),
          },
          character_mask_config:: {
            characters_to_ignore:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.character_mask_config.characters_to_ignore.new` constructs a new object with attributes and blocks configured for the `characters_to_ignore`\nTerraform sub block.\n\n\n\n**Args**:\n  - `characters_to_skip` (`string`): Characters to not transform when masking. When `null`, the `characters_to_skip` field will be omitted from the resulting object.\n  - `common_characters_to_ignore` (`string`): Common characters to not transform when masking. Useful to avoid removing punctuation. Possible values: [&#34;NUMERIC&#34;, &#34;ALPHA_UPPER_CASE&#34;, &#34;ALPHA_LOWER_CASE&#34;, &#34;PUNCTUATION&#34;, &#34;WHITESPACE&#34;] When `null`, the `common_characters_to_ignore` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `characters_to_ignore` sub block.\n', args=[]),
              new(
                characters_to_skip=null,
                common_characters_to_ignore=null
              ):: std.prune(a={
                characters_to_skip: characters_to_skip,
                common_characters_to_ignore: common_characters_to_ignore,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.character_mask_config.new` constructs a new object with attributes and blocks configured for the `character_mask_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `masking_character` (`string`): Character to use to mask the sensitive values—for example, * for an alphabetic string such as a name, or 0 for a numeric string\nsuch as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to * for\nstrings, and 0 for digits. When `null`, the `masking_character` field will be omitted from the resulting object.\n  - `number_to_mask` (`number`): Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally.\nIf number_to_mask is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values:\n- &#39;masking_character&#39; is *\n- &#39;number_to_mask&#39; is -4\n- &#39;reverse_order&#39; is false\n- &#39;characters_to_ignore&#39; includes -\n- Input string is 1234-5678-9012-3456\n\nThe resulting de-identified string is ****-****-****-3456. Cloud DLP masks all but the last four characters. If reverseOrder is true, all but the first four characters are masked as 1234-****-****-****. When `null`, the `number_to_mask` field will be omitted from the resulting object.\n  - `reverse_order` (`bool`): Mask characters in reverse order. For example, if masking_character is 0, number_to_mask is 14, and reverse_order is &#39;false&#39;, then the\ninput string &#39;1234-5678-9012-3456&#39; is masked as &#39;00000000000000-3456&#39;. When `null`, the `reverse_order` field will be omitted from the resulting object.\n  - `characters_to_ignore` (`list[obj]`): Characters to skip when doing de-identification of a value. These will be left alone and skipped. When `null`, the `characters_to_ignore` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.character_mask_config.characters_to_ignore.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcharacters_to_ignorenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `character_mask_config` sub block.\n', args=[]),
            new(
              characters_to_ignore=null,
              masking_character=null,
              number_to_mask=null,
              reverse_order=null
            ):: std.prune(a={
              characters_to_ignore: characters_to_ignore,
              masking_character: masking_character,
              number_to_mask: number_to_mask,
              reverse_order: reverse_order,
            }),
          },
          crypto_deterministic_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): KMS wrapped key.\nInclude to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt\nFor more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).\nNote: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.kms_wrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_deterministic_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_deterministic_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_deterministic_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.new` constructs a new object with attributes and blocks configured for the `crypto_deterministic_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `context` (`list[obj]`): A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well.\n\nIf the context is not set, plaintext would be used as is for encryption. If the context is set but:\n\n1. there is no record present when transforming a given value or\n2. the field is not present when transforming a given value,\n\nplaintext would be used as is for encryption.\n\nNote that case (1) is expected when an InfoTypeTransformation is applied to both structured and unstructured ContentItems. When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.context.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.crypto_key.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_keynew) constructor.\n  - `surrogate_info_type` (`list[obj]`): The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate}\n\nFor example, if the name of custom info type is &#39;MY\\_TOKEN\\_INFO\\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\\_TOKEN\\_INFO\\_TYPE(3):abc&#39;\n\nThis annotation identifies the surrogate when inspecting content using the custom info type &#39;Surrogate&#39;. This facilitates reversal of the surrogate when it occurs in free text.\n\nNote: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text.\n\nIn order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either\n\n*   reverse a surrogate that does not correspond to an actual identifier\n*   be unable to parse the surrogate and result in an error\n\nTherefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\\_TOKEN\\_TYPE. When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationsurrogate_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_deterministic_config` sub block.\n', args=[]),
            new(
              context=null,
              crypto_key=null,
              surrogate_info_type=null
            ):: std.prune(a={
              context: context,
              crypto_key: crypto_key,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n  - `version` (`string`): Optional version name for this InfoType. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `surrogate_info_type` sub block.\n', args=[]),
              new(
                name=null,
                version=null
              ):: std.prune(a={
                name: name,
                version: version,
              }),
            },
          },
          crypto_hash_config:: {
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): KMS wrapped key.\nInclude to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt\nFor more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).\nNote: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.kms_wrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_hash_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.transient.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_hash_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_hash_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.new` constructs a new object with attributes and blocks configured for the `crypto_hash_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key` (`list[obj]`): The key used by the encryption function. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.crypto_key.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_keynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_hash_config` sub block.\n', args=[]),
            new(
              crypto_key=null
            ):: std.prune(a={
              crypto_key: crypto_key,
            }),
          },
          crypto_replace_ffx_fpe_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): KMS wrapped key.\nInclude to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt\nFor more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).\nNote: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.kms_wrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_replace_ffx_fpe_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_replace_ffx_fpe_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_replace_ffx_fpe_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new` constructs a new object with attributes and blocks configured for the `crypto_replace_ffx_fpe_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `common_alphabet` (`string`): Common alphabets. Possible values: [&#34;FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED&#34;, &#34;NUMERIC&#34;, &#34;HEXADECIMAL&#34;, &#34;UPPER_CASE_ALPHA_NUMERIC&#34;, &#34;ALPHA_NUMERIC&#34;] When `null`, the `common_alphabet` field will be omitted from the resulting object.\n  - `custom_alphabet` (`string`): This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \\[2, 95\\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:\n\n&#39;&#39;0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~&#39;!@#$%^&amp;*()_-&#43;={[}]|:;&#34;&#39;&lt;,&gt;.?/&#39;&#39; When `null`, the `custom_alphabet` field will be omitted from the resulting object.\n  - `radix` (`number`): The native way to select the alphabet. Must be in the range \\[2, 95\\]. When `null`, the `radix` field will be omitted from the resulting object.\n  - `context` (`list[obj]`): The &#39;tweak&#39;, a context may be used for higher security since the same identifier in two different contexts won&#39;t be given the same surrogate. If the context is not set, a default tweak will be used.\n\nIf the context is set but:\n\n1.  there is no record present when transforming a given value or\n2.  the field is not present when transforming a given value,\n\na default tweak will be used.\n\nNote that case (1) is expected when an &#39;InfoTypeTransformation&#39; is applied to both structured and non-structured &#39;ContentItem&#39;s. Currently, the referenced field may be of value type integer or string.\n\nThe tweak is constructed as a sequence of bytes in big endian byte order such that:\n\n*   a 64 bit integer is encoded followed by a single byte of value 1\n*   a string is encoded in UTF-8 format followed by a single byte of value 2 When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.context.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): The key used by the encryption algorithm. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_keynew) constructor.\n  - `surrogate_info_type` (`list[obj]`): The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\\_type\\_name(surrogate\\_character\\_count):surrogate\n\nFor example, if the name of custom infoType is &#39;MY\\_TOKEN\\_INFO\\_TYPE&#39; and the surrogate is &#39;abc&#39;, the full replacement value will be: &#39;MY\\_TOKEN\\_INFO\\_TYPE(3):abc&#39;\n\nThis annotation identifies the surrogate when inspecting content using the custom infoType [&#39;SurrogateType&#39;](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.\n\nIn order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\\_TOKEN\\_TYPE When `null`, the `surrogate_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationsurrogate_info_typenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_replace_ffx_fpe_config` sub block.\n', args=[]),
            new(
              common_alphabet=null,
              context=null,
              crypto_key=null,
              custom_alphabet=null,
              radix=null,
              surrogate_info_type=null
            ):: std.prune(a={
              common_alphabet: common_alphabet,
              context: context,
              crypto_key: crypto_key,
              custom_alphabet: custom_alphabet,
              radix: radix,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.surrogate_info_type.new` constructs a new object with attributes and blocks configured for the `surrogate_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at [https://cloud.google.com/dlp/docs/infotypes-reference](https://cloud.google.com/dlp/docs/infotypes-reference) when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern &#39;[A-Za-z0-9$-_]{1,64}&#39;. When `null`, the `name` field will be omitted from the resulting object.\n  - `version` (`string`): Optional version name for this InfoType. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `surrogate_info_type` sub block.\n', args=[]),
              new(
                name=null,
                version=null
              ):: std.prune(a={
                name: name,
                version: version,
              }),
            },
          },
          date_shift_config:: {
            context:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.context.new` constructs a new object with attributes and blocks configured for the `context`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `context` sub block.\n', args=[]),
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.kms_wrapped.new` constructs a new object with attributes and blocks configured for the `kms_wrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `crypto_key_name` (`string`): The resource name of the KMS CryptoKey to use for unwrapping.\n  - `wrapped_key` (`string`): The wrapped data crypto key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `kms_wrapped` sub block.\n', args=[]),
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.new` constructs a new object with attributes and blocks configured for the `crypto_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_wrapped` (`list[obj]`): KMS wrapped key.\nInclude to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt\nFor more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).\nNote: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing). When `null`, the `kms_wrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.kms_wrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationdate_shift_configkms_wrappednew) constructor.\n  - `transient` (`list[obj]`): Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. When `null`, the `transient` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.transient.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationdate_shift_configtransientnew) constructor.\n  - `unwrapped` (`list[obj]`): Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. When `null`, the `unwrapped` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationdate_shift_configunwrappednew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `crypto_key` sub block.\n', args=[]),
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.transient.new` constructs a new object with attributes and blocks configured for the `transient`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate &#39;TransientCryptoKey&#39; protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).\n\n**Returns**:\n  - An attribute object that represents the `transient` sub block.\n', args=[]),
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped.new` constructs a new object with attributes and blocks configured for the `unwrapped`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): A 128/192/256 bit key.\n\nA base64-encoded string.\n\n**Returns**:\n  - An attribute object that represents the `unwrapped` sub block.\n', args=[]),
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.new` constructs a new object with attributes and blocks configured for the `date_shift_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `lower_bound_days` (`number`): For example, -5 means shift date to at most 5 days back in the past.\n  - `upper_bound_days` (`number`): Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction.\n\nFor example, 3 means shift date to at most 3 days into the future.\n  - `context` (`list[obj]`): Points to the field that contains the context, for example, an entity id.\nIf set, must also set cryptoKey. If set, shift will be consistent for the given context. When `null`, the `context` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.context.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcontextnew) constructor.\n  - `crypto_key` (`list[obj]`): Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and cryptoKey. If set, must also set context. Can only be applied to table items. When `null`, the `crypto_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.crypto_key.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationcrypto_keynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `date_shift_config` sub block.\n', args=[]),
            new(
              lower_bound_days,
              upper_bound_days,
              context=null,
              crypto_key=null
            ):: std.prune(a={
              context: context,
              crypto_key: crypto_key,
              lower_bound_days: lower_bound_days,
              upper_bound_days: upper_bound_days,
            }),
          },
          fixed_size_bucketing_config:: {
            lower_bound:: {
              date_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                new(
                  day=null,
                  month=null,
                  year=null
                ):: std.prune(a={
                  day: day,
                  month: month,
                  year: year,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.new` constructs a new object with attributes and blocks configured for the `lower_bound`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationfixed_size_bucketing_configdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationfixed_size_bucketing_configtime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `lower_bound` sub block.\n', args=[]),
              new(
                boolean_value=null,
                date_value=null,
                day_of_week_value=null,
                float_value=null,
                integer_value=null,
                string_value=null,
                time_value=null,
                timestamp_value=null
              ):: std.prune(a={
                boolean_value: boolean_value,
                date_value: date_value,
                day_of_week_value: day_of_week_value,
                float_value: float_value,
                integer_value: integer_value,
                string_value: string_value,
                time_value: time_value,
                timestamp_value: timestamp_value,
              }),
              time_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                new(
                  hours=null,
                  minutes=null,
                  nanos=null,
                  seconds=null
                ):: std.prune(a={
                  hours: hours,
                  minutes: minutes,
                  nanos: nanos,
                  seconds: seconds,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.new` constructs a new object with attributes and blocks configured for the `fixed_size_bucketing_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket_size` (`number`): Size of each bucket (except for minimum and maximum buckets).\nSo if lower_bound = 10, upper_bound = 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89&#43;.\nPrecision up to 2 decimals works.\n  - `lower_bound` (`list[obj]`): Lower bound value of buckets.\nAll values less than lower_bound are grouped together into a single bucket; for example if lower_bound = 10, then all values less than 10 are replaced with the value &#34;-10&#34;.\nThe &#39;lower_bound&#39; block must only contain one argument. See the &#39;fixed_size_bucketing_config&#39; block description for more information about choosing a data type. When `null`, the `lower_bound` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.lower_bound.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationlower_boundnew) constructor.\n  - `upper_bound` (`list[obj]`): Upper bound value of buckets.\nAll values greater than upper_bound are grouped together into a single bucket; for example if upper_bound = 89, then all values greater than 89 are replaced with the value &#34;89&#43;&#34;.\nThe &#39;upper_bound&#39; block must only contain one argument. See the &#39;fixed_size_bucketing_config&#39; block description for more information about choosing a data type. When `null`, the `upper_bound` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationupper_boundnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fixed_size_bucketing_config` sub block.\n', args=[]),
            new(
              bucket_size,
              lower_bound=null,
              upper_bound=null
            ):: std.prune(a={
              bucket_size: bucket_size,
              lower_bound: lower_bound,
              upper_bound: upper_bound,
            }),
            upper_bound:: {
              date_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                new(
                  day=null,
                  month=null,
                  year=null
                ):: std.prune(a={
                  day: day,
                  month: month,
                  year: year,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.new` constructs a new object with attributes and blocks configured for the `upper_bound`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationfixed_size_bucketing_configdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationfixed_size_bucketing_configtime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `upper_bound` sub block.\n', args=[]),
              new(
                boolean_value=null,
                date_value=null,
                day_of_week_value=null,
                float_value=null,
                integer_value=null,
                string_value=null,
                time_value=null,
                timestamp_value=null
              ):: std.prune(a={
                boolean_value: boolean_value,
                date_value: date_value,
                day_of_week_value: day_of_week_value,
                float_value: float_value,
                integer_value: integer_value,
                string_value: string_value,
                time_value: time_value,
                timestamp_value: timestamp_value,
              }),
              time_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.upper_bound.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                new(
                  hours=null,
                  minutes=null,
                  nanos=null,
                  seconds=null
                ):: std.prune(a={
                  hours: hours,
                  minutes: minutes,
                  nanos: nanos,
                  seconds: seconds,
                }),
              },
            },
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.new` constructs a new object with attributes and blocks configured for the `primitive_transformation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucketing_config` (`list[obj]`): Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -&gt; LOW 31-65 -&gt; MEDIUM 66-100 -&gt; HIGH\nThis can be used on data of type: number, long, string, timestamp.\nIf the provided value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.\nSee https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. When `null`, the `bucketing_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.bucketing_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsbucketing_confignew) constructor.\n  - `character_mask_config` (`list[obj]`): Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we&#39;ll attempt to preserve the original data&#39;s type. (This allows you to take a long like 123 and modify it to a string like **3). When `null`, the `character_mask_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.character_mask_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationscharacter_mask_confignew) constructor.\n  - `crypto_deterministic_config` (`list[obj]`): Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297). When `null`, the `crypto_deterministic_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_deterministic_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationscrypto_deterministic_confignew) constructor.\n  - `crypto_hash_config` (`list[obj]`): Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.\nOutputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=).\nCurrently, only string and integer values can be hashed.\nSee https://cloud.google.com/dlp/docs/pseudonymization to learn more. When `null`, the `crypto_hash_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_hash_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationscrypto_hash_confignew) constructor.\n  - `crypto_replace_ffx_fpe_config` (`list[obj]`): Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the &#39;content.reidentify&#39; API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.\n\nNote: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity. When `null`, the `crypto_replace_ffx_fpe_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.crypto_replace_ffx_fpe_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationscrypto_replace_ffx_fpe_confignew) constructor.\n  - `date_shift_config` (`list[obj]`): Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more. When `null`, the `date_shift_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.date_shift_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsdate_shift_confignew) constructor.\n  - `fixed_size_bucketing_config` (`list[obj]`): Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.\n\nThe transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with &#34;10-20&#34;.\n\nThis can be used on data of type: double, long.\n\nIf the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.\n\nSee https://cloud.google.com/dlp/docs/concepts-bucketing to learn more. When `null`, the `fixed_size_bucketing_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.fixed_size_bucketing_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsfixed_size_bucketing_confignew) constructor.\n  - `redact_config` (`list[obj]`): Redact a given value. For example, if used with an InfoTypeTransformation transforming PHONE_NUMBER, and input &#39;My phone number is 206-555-0123&#39;, the output would be &#39;My phone number is &#39;. When `null`, the `redact_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.redact_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsredact_confignew) constructor.\n  - `replace_config` (`list[obj]`): Replace with a specified value. When `null`, the `replace_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsreplace_confignew) constructor.\n  - `replace_dictionary_config` (`list[obj]`): Replace with a value randomly drawn (with replacement) from a dictionary. When `null`, the `replace_dictionary_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsreplace_dictionary_confignew) constructor.\n  - `time_part_config` (`list[obj]`): For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value. When `null`, the `time_part_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.time_part_config.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationstime_part_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `primitive_transformation` sub block.\n', args=[]),
          new(
            bucketing_config=null,
            character_mask_config=null,
            crypto_deterministic_config=null,
            crypto_hash_config=null,
            crypto_replace_ffx_fpe_config=null,
            date_shift_config=null,
            fixed_size_bucketing_config=null,
            redact_config=null,
            replace_config=null,
            replace_dictionary_config=null,
            time_part_config=null
          ):: std.prune(a={
            bucketing_config: bucketing_config,
            character_mask_config: character_mask_config,
            crypto_deterministic_config: crypto_deterministic_config,
            crypto_hash_config: crypto_hash_config,
            crypto_replace_ffx_fpe_config: crypto_replace_ffx_fpe_config,
            date_shift_config: date_shift_config,
            fixed_size_bucketing_config: fixed_size_bucketing_config,
            redact_config: redact_config,
            replace_config: replace_config,
            replace_dictionary_config: replace_dictionary_config,
            time_part_config: time_part_config,
          }),
          redact_config:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.redact_config.new` constructs a new object with attributes and blocks configured for the `redact_config`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `redact_config` sub block.\n', args=[]),
            new(

            ):: std.prune(a={}),
          },
          replace_config:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new` constructs a new object with attributes and blocks configured for the `replace_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `new_value` (`list[obj]`): Replace each input value with a given value.\nThe &#39;new_value&#39; block must only contain one argument. For example when replacing the contents of a string-type field, only &#39;string_value&#39; should be set. When `null`, the `new_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationnew_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replace_config` sub block.\n', args=[]),
            new(
              new_value=null
            ):: std.prune(a={
              new_value: new_value,
            }),
            new_value:: {
              date_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                new(
                  day=null,
                  month=null,
                  year=null
                ):: std.prune(a={
                  day: day,
                  month: month,
                  year: year,
                }),
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.new` constructs a new object with attributes and blocks configured for the `new_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationreplace_configdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationreplace_configtime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `new_value` sub block.\n', args=[]),
              new(
                boolean_value=null,
                date_value=null,
                day_of_week_value=null,
                float_value=null,
                integer_value=null,
                string_value=null,
                time_value=null,
                timestamp_value=null
              ):: std.prune(a={
                boolean_value: boolean_value,
                date_value: date_value,
                day_of_week_value: day_of_week_value,
                float_value: float_value,
                integer_value: integer_value,
                string_value: string_value,
                time_value: time_value,
                timestamp_value: timestamp_value,
              }),
              time_value:: {
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_config.new_value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                new(
                  hours=null,
                  minutes=null,
                  nanos=null,
                  seconds=null
                ):: std.prune(a={
                  hours: hours,
                  minutes: minutes,
                  nanos: nanos,
                  seconds: seconds,
                }),
              },
            },
          },
          replace_dictionary_config:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config.new` constructs a new object with attributes and blocks configured for the `replace_dictionary_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `word_list` (`list[obj]`): A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config.word_list.new](#fn-deidentify_configdeidentify_configrecord_transformationsfield_transformationsprimitive_transformationword_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `replace_dictionary_config` sub block.\n', args=[]),
            new(
              word_list=null
            ):: std.prune(a={
              word_list: word_list,
            }),
            word_list:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.replace_dictionary_config.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits.\n\n**Returns**:\n  - An attribute object that represents the `word_list` sub block.\n', args=[]),
              new(
                words
              ):: std.prune(a={
                words: words,
              }),
            },
          },
          time_part_config:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.primitive_transformation.time_part_config.new` constructs a new object with attributes and blocks configured for the `time_part_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `part_to_extract` (`string`): The part of the time to keep. Possible values: [&#34;YEAR&#34;, &#34;MONTH&#34;, &#34;DAY_OF_MONTH&#34;, &#34;DAY_OF_WEEK&#34;, &#34;WEEK_OF_YEAR&#34;, &#34;HOUR_OF_DAY&#34;] When `null`, the `part_to_extract` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_part_config` sub block.\n', args=[]),
            new(
              part_to_extract=null
            ):: std.prune(a={
              part_to_extract: part_to_extract,
            }),
          },
        },
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.new` constructs a new object with attributes and blocks configured for the `record_transformations`\nTerraform sub block.\n\n\n\n**Args**:\n  - `field_transformations` (`list[obj]`): Transform the record by applying various field transformations. When `null`, the `field_transformations` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.field_transformations.new](#fn-deidentify_configdeidentify_configfield_transformationsnew) constructor.\n  - `record_suppressions` (`list[obj]`): Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output. When `null`, the `record_suppressions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.new](#fn-deidentify_configdeidentify_configrecord_suppressionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `record_transformations` sub block.\n', args=[]),
      new(
        field_transformations=null,
        record_suppressions=null
      ):: std.prune(a={
        field_transformations: field_transformations,
        record_suppressions: record_suppressions,
      }),
      record_suppressions:: {
        condition:: {
          expressions:: {
            conditions:: {
              conditions:: {
                field:: {
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.field.new` constructs a new object with attributes and blocks configured for the `field`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `field` sub block.\n', args=[]),
                  new(
                    name=null
                  ):: std.prune(a={
                    name: name,
                  }),
                },
                '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `operator` (`string`): Operator used to compare the field or infoType to the value. Possible values: [&#34;EQUAL_TO&#34;, &#34;NOT_EQUAL_TO&#34;, &#34;GREATER_THAN&#34;, &#34;LESS_THAN&#34;, &#34;GREATER_THAN_OR_EQUALS&#34;, &#34;LESS_THAN_OR_EQUALS&#34;, &#34;EXISTS&#34;]\n  - `field` (`list[obj]`): Field within the record this condition is evaluated against. When `null`, the `field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.field.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsconditionexpressionsconditionsfieldnew) constructor.\n  - `value` (`list[obj]`): Value to compare against. [Mandatory, except for EXISTS tests.] When `null`, the `value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsconditionexpressionsconditionsvaluenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `conditions` sub block.\n', args=[]),
                new(
                  operator,
                  field=null,
                  value=null
                ):: std.prune(a={
                  field: field,
                  operator: operator,
                  value: value,
                }),
                value:: {
                  date_value:: {
                    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.date_value.new` constructs a new object with attributes and blocks configured for the `date_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.\n  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. When `null`, the `month` field will be omitted from the resulting object.\n  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. When `null`, the `year` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `date_value` sub block.\n', args=[]),
                    new(
                      day=null,
                      month=null,
                      year=null
                    ):: std.prune(a={
                      day: day,
                      month: month,
                      year: year,
                    }),
                  },
                  '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.new` constructs a new object with attributes and blocks configured for the `value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): A boolean value. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `day_of_week_value` (`string`): Represents a day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day_of_week_value` field will be omitted from the resulting object.\n  - `float_value` (`number`): A float value. When `null`, the `float_value` field will be omitted from the resulting object.\n  - `integer_value` (`string`): An integer value (int64 format) When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `string_value` (`string`): A string value. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `timestamp_value` (`string`): A timestamp in RFC3339 UTC &#34;Zulu&#34; format, with nanosecond resolution and up to nine fractional digits. Examples: &#34;2014-10-02T15:01:23Z&#34; and &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `timestamp_value` field will be omitted from the resulting object.\n  - `date_value` (`list[obj]`): Represents a whole or partial calendar date. When `null`, the `date_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.date_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsconditionexpressionsconditionsconditionsdate_valuenew) constructor.\n  - `time_value` (`list[obj]`): Represents a time of day. When `null`, the `time_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.time_value.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsconditionexpressionsconditionsconditionstime_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `value` sub block.\n', args=[]),
                  new(
                    boolean_value=null,
                    date_value=null,
                    day_of_week_value=null,
                    float_value=null,
                    integer_value=null,
                    string_value=null,
                    time_value=null,
                    timestamp_value=null
                  ):: std.prune(a={
                    boolean_value: boolean_value,
                    date_value: date_value,
                    day_of_week_value: day_of_week_value,
                    float_value: float_value,
                    integer_value: integer_value,
                    string_value: string_value,
                    time_value: time_value,
                    timestamp_value: timestamp_value,
                  }),
                  time_value:: {
                    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.value.time_value.new` constructs a new object with attributes and blocks configured for the `time_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_value` sub block.\n', args=[]),
                    new(
                      hours=null,
                      minutes=null,
                      nanos=null,
                      seconds=null
                    ):: std.prune(a={
                      hours: hours,
                      minutes: minutes,
                      nanos: nanos,
                      seconds: seconds,
                    }),
                  },
                },
              },
              '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `conditions` (`list[obj]`): A collection of conditions. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.conditions.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsconditionexpressionsconditionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `conditions` sub block.\n', args=[]),
              new(
                conditions=null
              ):: std.prune(a={
                conditions: conditions,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.new` constructs a new object with attributes and blocks configured for the `expressions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `logical_operator` (`string`): The operator to apply to the result of conditions. Default and currently only supported value is AND. Default value: &#34;AND&#34; Possible values: [&#34;AND&#34;] When `null`, the `logical_operator` field will be omitted from the resulting object.\n  - `conditions` (`list[obj]`): Conditions to apply to the expression. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.conditions.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsconditionconditionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `expressions` sub block.\n', args=[]),
            new(
              conditions=null,
              logical_operator=null
            ):: std.prune(a={
              conditions: conditions,
              logical_operator: logical_operator,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expressions` (`list[obj]`): An expression, consisting of an operator and conditions. When `null`, the `expressions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.expressions.new](#fn-deidentify_configdeidentify_configrecord_transformationsrecord_suppressionsexpressionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
          new(
            expressions=null
          ):: std.prune(a={
            expressions: expressions,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.new` constructs a new object with attributes and blocks configured for the `record_suppressions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `condition` (`list[obj]`): A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.record_transformations.record_suppressions.condition.new](#fn-deidentify_configdeidentify_configrecord_transformationsconditionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `record_suppressions` sub block.\n', args=[]),
        new(
          condition=null
        ):: std.prune(a={
          condition: condition,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.data_loss_prevention_deidentify_template.new` injects a new `google_data_loss_prevention_deidentify_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_loss_prevention_deidentify_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_loss_prevention_deidentify_template` using the reference:\n\n    $._ref.google_data_loss_prevention_deidentify_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_loss_prevention_deidentify_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the template. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the template in any of the following formats:\n\n* \u0026#39;projects/{{project}}\u0026#39;\n* \u0026#39;projects/{{project}}/locations/{{location}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}/locations/{{location}}\u0026#39;\n  - `deidentify_config` (`list[obj]`): Configuration of the deidentify template When `null`, the `deidentify_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.new](#fn-deidentify_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    deidentify_config=null,
    description=null,
    display_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_deidentify_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      deidentify_config=deidentify_config,
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_deidentify_template`\nTerraform resource.\n\nUnlike [google.data_loss_prevention_deidentify_template.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the template. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the template in any of the following formats:\n\n* &#39;projects/{{project}}&#39;\n* &#39;projects/{{project}}/locations/{{location}}&#39;\n* &#39;organizations/{{organization_id}}&#39;\n* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;\n  - `deidentify_config` (`list[obj]`): Configuration of the deidentify template When `null`, the `deidentify_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.deidentify_config.new](#fn-deidentify_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_deidentify_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_deidentify_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    deidentify_config=null,
    description=null,
    display_name=null,
    timeouts=null
  ):: std.prune(a={
    deidentify_config: deidentify_config,
    description: description,
    display_name: display_name,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_loss_prevention_deidentify_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDeidentifyConfig':: d.fn(help='`google.list[obj].withDeidentifyConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deidentify_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDeidentifyConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deidentify_config` field.\n', args=[]),
  withDeidentifyConfig(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          deidentify_config: value,
        },
      },
    },
  },
  '#withDeidentifyConfigMixin':: d.fn(help='`google.list[obj].withDeidentifyConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the deidentify_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDeidentifyConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `deidentify_config` field.\n', args=[]),
  withDeidentifyConfigMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          deidentify_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
