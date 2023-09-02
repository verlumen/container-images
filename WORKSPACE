workspace(name = "container_images")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.1/bazel-skylib-1.0.1.tar.gz",
    sha256 = "f1c8360c01fcf276778d3519394805dc2a71a64274a3a0908bc9edff7b5aebc8",
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()
