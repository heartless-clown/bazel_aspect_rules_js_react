# Third-party dependencies fetched by Bazel
# Unlike WORKSPACE, the content of this file is unordered.
# We keep them separate to make the WORKSPACE file more maintainable.

# Install the nodejs "bootstrap" package
# This provides the basic tools for running and packaging nodejs programs in Bazel
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fetch_dependencies():
    # https://github.com/bazelbuild/rules_nodejs/releases/tag/5.5.1
    http_archive(
        name = "rules_nodejs",
        sha256 = "77cbc1989562c5b2268b293573deff30984ef06b129b40c36eff764af702fe2f",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.5.1/rules_nodejs-core-5.5.1.tar.gz"],
    )

    # https://github.com/aspect-build/rules_js/releases/tag/v1.0.0-rc.1
    http_archive(
        name = "aspect_rules_js",
        sha256 = "80e168f9cd62f3640de429b70b34ff817d0d94ada2abaf2cffeef46e35434e1d",
        strip_prefix = "rules_js-1.0.0-rc.1",
        url = "https://github.com/aspect-build/rules_js/archive/refs/tags/v1.0.0-rc.1.tar.gz",
    )
