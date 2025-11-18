# oslonokkelen-app-client-ios-spm

Public Swift Package Manager façade for the private `oslonokkelen-app-client` Kotlin Multiplatform project. This repo only hosts the signed XCFramework zip and an auto-updated `Package.swift` manifest so iOS clients (Xcode / CI) can resolve the binary without needing access to the private source repository.

## How the release workflow works

1. The `Create New Version` workflow (in `.github/workflows/create-new-version.yml`) is triggered manually from GitHub → **Actions** → **Create New Version** → **Run workflow**.
2. The workflow checks out this repo and the private `oslonokkelen-app-client` repo (using the `APP_CLIENT_REPO_TOKEN` secret).
3. Gradle builds `OslonokkelenAppClientReleaseXCFramework`, zips the XCFramework and computes the SwiftPM checksum.
4. The script bumps the semantic version (defaults to patch) using the `spm-vX.Y.Z` tag scheme, updates `Package.swift` with the new download URL + checksum, commits the change, pushes the tag, and publishes a GitHub Release that hosts the zip asset.
5. Consumers only need the latest `Package.swift` on the default branch; no manual edits are required.

## Required repository secrets

| Secret | Purpose |
| --- | --- |
| `APP_CLIENT_REPO_TOKEN` | A fine-scoped PAT with `repo` read access that lets the workflow clone `oslokommune/oslonokkelen-app-client`. |

## Workflow inputs

- `bump` (optional): `major`, `minor`, or `patch` (default). Determines how the next semantic version (`spm-v*.*.*`) is calculated.

## First-time setup

1. Create the `APP_CLIENT_REPO_TOKEN` secret.
2. Run **Create New Version** once to produce the first public release and update `Package.swift` with a real artifact URL and checksum.
3. Point Xcode or other consumers to this repository URL when adding the Swift package.
