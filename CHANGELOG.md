## 1.0.1

- **Fixed:** Prevent Out-Of-Memory (OOM) crashes by validating maximum safe hardware texture limits.
- **Fixed:** Add validation for invalid parameters to prevent errors when `moduleSize` or `margin` are negative.
- **Fixed:** Update `toPngBytes` doc comments to accurately reflect the internal error handling behavior.
- **Added:** Introduce GitHub Actions CI workflow for automated testing and static analysis on Dart SDK 3.8.1 and stable.
- **Changed:** Remove the unused `lints` dev dependency to clean up project dependencies.

## 1.0.0

- **Initial stable release.**
- Provides the `QrImageExporter` extension on `QrImage` to export QR codes as PNG byte data.
- Adds the `toPngBytes` method with customizable parameters for `moduleSize`, `margin`, `darkColor`, and `lightColor`.
- Depends on the `image` package to handle image creation and PNG encoding.