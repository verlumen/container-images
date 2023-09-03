workspace(name = "container_images")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

# Constants for the versions
_BAZELISK_VERSION = "1.18.0"
_TERRAFORM_VERSION = "1.5.6"
_JQ_VERSION = "1.6"

http_file(
    name = "bazelisk_binary",
    executable = True,
    sha256 = "ce52caa51ef9e509fb6b7e5ad892e5cf10feb0794b0aed4d2f36adb00a1a2779",
    url = "https://github.com/bazelbuild/bazelisk/releases/download/v{version}/bazelisk-linux-amd64".format(version = _BAZELISK_VERSION),
)

http_archive(
    name = "terraform_binary",
    build_file_content = """
filegroup(
    name = "file",
    srcs = ["terraform"],
    visibility = ["//visibility:public"],
)
""",
    urls = ["https://releases.hashicorp.com/terraform/{version}/terraform_{version}_linux_386.zip".format(version = _TERRAFORM_VERSION)],
)

http_file(
    name = "jq_binary",
    executable = True,
    sha256 = "af986793a515d500ab2d35f8d2ae420f865d6d2f153fc3114faf68be45b3e2d4", # Replace with the correct sha256 sum
    url = "https://github.com/jqlang/jq/releases/download/jq-{version}/jq-linux64".format(version = _JQ_VERSION),
)
