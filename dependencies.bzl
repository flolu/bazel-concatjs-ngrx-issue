load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def dependencies():
    # https://github.com/bazelbuild/bazel-skylib/releases
    http_archive(
        name = "bazel_skylib",
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        ],
    )

    # https://github.com/bazelbuild/rules_nodejs/releases
    http_archive(
        name = "build_bazel_rules_nodejs",
        sha256 = "55a25a762fcf9c9b88ab54436581e671bc9f4f523cb5a1bd32459ebec7be68a8",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/3.2.2/rules_nodejs-3.2.2.tar.gz"],
    )

    # https://github.com/bazelbuild/rules_sass
    http_archive(
        name = "io_bazel_rules_sass",
        patch_args = ["-p1"],
        # We need the latest rules_sass to get the --bazel_patch_module_resolver behavior
        # However it seems to have a bug, so we patch back to the prior dart-sass version.
        # See https://github.com/bazelbuild/rules_sass/issues/127
        patches = ["@build_bazel_rules_nodejs//:rules_sass.issue127.patch"],
        sha256 = "8392cf8910db2b1dc3b488ea18113bfe4fd666037bf8ec30d2a3f08fc602a6d8",
        strip_prefix = "rules_sass-1.30.0",
        urls = [
            "https://github.com/bazelbuild/rules_sass/archive/1.30.0.zip",
            "https://mirror.bazel.build/github.com/bazelbuild/rules_sass/archive/1.30.0.zip",
        ],
    )

    # https://github.com/bazelbuild/rules_webtesting/releases
    http_archive(
        name = "io_bazel_rules_webtesting",
        sha256 = "9bb461d5ef08e850025480bab185fd269242d4e533bca75bfb748001ceb343c3",
        urls = ["https://github.com/bazelbuild/rules_webtesting/releases/download/0.3.3/rules_webtesting.tar.gz"],
    )