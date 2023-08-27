workspace(name = "container_images")

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

##########################
##### DOCKER SUPPORT #####
##########################
git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/bazelbuild/rules_docker",
    tag = "v0.22.0",
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
)

container_pull(
    name = "debian_slim",
    registry = "docker.io",
    repository = "debian",
    tag = "bookworm-20230814-slim"
)
