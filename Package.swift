// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "FFmpegKitWrapper",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "FFmpegKitWrapper", targets: ["FFmpegKitWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "FFmpegKit",
            path: "Sources/FFmpegKitWrapper/Frameworks/ffmpegkit.framework"
        ),
        .binaryTarget(
            name: "libavcodec",
            path: "Sources/FFmpegKitWrapper/Frameworks/libavcodec.framework"
        ),
        .binaryTarget(
            name: "libavdevice",
            path: "Sources/FFmpegKitWrapper/Frameworks/libavdevice.framework"
        ),
        .binaryTarget(
            name: "libavfilter",
            path: "Sources/FFmpegKitWrapper/Frameworks/libavfilter.framework"
        ),
        .binaryTarget(
            name: "libavformat",
            path: "Sources/FFmpegKitWrapper/Frameworks/libavformat.framework"
        ),
        .binaryTarget(
            name: "libavutil",
            path: "Sources/FFmpegKitWrapper/Frameworks/libavutil.framework"
        ),
        .binaryTarget(
            name: "libswresample",
            path: "Sources/FFmpegKitWrapper/Frameworks/libswresample.framework"
        ),
        .binaryTarget(
            name: "libswscale",
            path: "Sources/FFmpegKitWrapper/Frameworks/libswscale.framework"
        ),
        .target(
            name: "FFmpegKitWrapper",
            dependencies: ["FFmpegKit", "libavcodec", "libavdevice", "libavfilter", "libavformat", "libavutil", "libswresample", "libswscale"],
            path: "Sources/FFmpegKitWrapper"
        )
    ]
)
