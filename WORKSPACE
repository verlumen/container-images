workspace(name = "container_images")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_BUILD_FILE_CONTENT = """
filegroup(
    name = "file",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""
# Constants for the versions
_BAZELISK_VERSION = "1.18.0"
_TERRAFORM_VERSION = "1.5.6"

http_archive(
    name = "terraform_binary",
    urls = ["https://releases.hashicorp.com/terraform/{version}/terraform_{version}_linux_386.zip".format(version=_TERRAFORM_VERSION)],
    build_file_content = _BUILD_FILE_CONTENT,
)

http_archive(
    name = "bazelisk_binary",
    urls = ["https://github.com/bazelbuild/bazelisk/archive/refs/tags/v{version}.tar.gz".format(version=_BAZELISK_VERSION)],
    build_file_content = _BUILD_FILE_CONTENT,
)
