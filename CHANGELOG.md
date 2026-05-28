## 2.0.0

This release upgrades the `qr` dependency to 4.0.0, which contains breaking API changes.
Because this package's extension is defined on `QrImage`, users must construct `QrImage`
using the `qr` package directly — making `qr`'s API an inseparable part of the user-facing
interface. Upgrading to this version therefore requires updating call sites accordingly.

### Breaking Changes

- **Raised minimum `qr` constraint to `^4.0.0`.**
  `qr` 4.0.0 renamed and restructured several APIs. The following changes are required in
  your code when upgrading:
  - `QrCode.fromData(data: ..., errorCorrectLevel: ...)` →
    `QrCode(payload: QrPayload.fromString(...), errorCorrectLevel: ...)`
  - `QrErrorCorrectLevel.L` → `QrErrorCorrectLevel.low`
  - `QrErrorCorrectLevel.M` → `QrErrorCorrectLevel.medium`
  - `QrErrorCorrectLevel.Q` → `QrErrorCorrectLevel.quartile`
  - `QrErrorCorrectLevel.H` → `QrErrorCorrectLevel.high`
- **Raised minimum Dart SDK constraint to `^3.11.0`** (previously `^3.8.1`), as required by
  `qr` 4.0.0. Dart 3.8.x–3.10.x are no longer supported.

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