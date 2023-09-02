workspace(name = "container_images")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

# Constants for the versions
_BAZELISK_VERSION = "1.18.0"
_CA_CERTIFICATIONS_VERSION = "20230311"
_TERRAFORM_VERSION = "1.5.6"

http_file(
    name = "bazelisk_binary",
    executable = True,
    sha256 = "ce52caa51ef9e509fb6b7e5ad892e5cf10feb0794b0aed4d2f36adb00a1a2779",
    url = "https://github.com/bazelbuild/bazelisk/releases/download/v{version}/bazelisk-linux-amd64".format(version = _BAZELISK_VERSION),
)

http_file(
    name = "ca-certificates-deb",
    url = "http://ftp.de.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_{version}_all.deb".format(version = _CA_CERTIFICATIONS_VERSION),
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
