# Sprite Lab (v0.3.1)
### Universal 2D Sprite Sheet & GIF Generator

![Main Interface](https://github.com/FedeiaTech/SpriteLab/blob/main/_img/cover.jpg)

**Sprite Lab** is a technical tool designed to optimize the workflow for 3D artists and developers using video generators. It transforms video clips (Blender renders, AI-generated clips, etc.) into **Sprite Sheets** or **Animated GIFs** optimized for engines such as **Godot, Unity, or GameMaker**.

This version 0.3 focuses on **visual feedback**, **high-quality GIF export**, and **UI polish**.

---

## Screenshots

### 1. Main Interface (Initial State)
![Main Interface](https://github.com/FedeiaTech/SpriteLab/blob/main/_img/01.png)
*Clean interface waiting for files to be loaded via Drag & Drop.*

### 2. Editor in Action (Chroma Key)
![Editing Video](https://github.com/FedeiaTech/SpriteLab/blob/main/_img/02.png)

### 3. Editor in Action (Cropping)
![Editing Video](https://github.com/FedeiaTech/SpriteLab/blob/main/_img/04.png)
*Real-time preview featuring background removal, automatic grid, and zoom viewer.*

### 4. Results (Sprite Sheet)
![Editing Video](https://github.com/FedeiaTech/SpriteLab/blob/main/_img/03.png)
*Smart Naming: Exported filenames automatically include the cropped frame dimensions (WxH) for quick reference during engine setup.*

---

## What's New in v0.3

* **High-Quality GIF Export:** Added support for animated GIF export using an internal dual-pass palette generation for professional color accuracy.
* **Enhanced Preview Windows:** GIF and Sheet previews now feature proportional scaling and auto-centering, fitting any screen size without distortion.
* **Dynamic Precision Cursors:** The mouse cursor now changes to a crosshair when using the Crop or Eyedropper tools for better visual feedback.
* **Visual Aspect Ratio Link:** Replaced the legacy emoji with a custom high-compatibility icon for the resolution link, ensuring consistent UI across all Windows versions.

---

## Fix 0.3.1 

* **Repaired sheet exports bugs**

---

## Technical Features

* **Local Processing:** All rendering is performed via **FFmpeg** on your local machine. The application makes no external connections and collects no user data.
* **Eyedropper Chroma Key:** Direct on-screen color selection with an adjustable tolerance slider for clean transparencies.
* **Zoom Viewer:** Free navigation (Panning) and automatic "Fit" mode for precise framing before exporting.
* **Bilingual System:** Support for dynamic language switching (English/Spanish) across the entire interface.

---

## Ethical Use & Purpose
This tool is built for **creators**. It serves as the ideal bridge for:
1. **Blender/Maya Artists** who need to export their 3D animations as 2D assets.
2. **Developers** using **generative AI video** (Runway, Sora, Grok) to create base characters and integrate them into a game engine.

---

## Installation

### Binary Releases (Recommended - No Java Required)

Self-contained binary releases are available for Linux and macOS from the [GitHub Releases](https://github.com/katamini/SpriteLab/releases) page. These binaries are built with jbundle and include an embedded JVM - **no Java installation required!**

**Linux (amd64):**
1. Download `SpriteLab-Linux-amd64.tar.gz` from the latest release
2. Extract: `tar -xzf SpriteLab-Linux-amd64.tar.gz`
3. Run: `./run-native.sh` or `./SpriteLab`

**macOS (arm64/Apple Silicon):**
1. Download `SpriteLab-macOS-arm64.tar.gz` from the latest release
2. Extract: `tar -xzf SpriteLab-macOS-arm64.tar.gz`
3. Run: `./run-native.sh` or `./SpriteLab`

Both packages include:
- Self-contained SpriteLab binary with embedded JVM (built with jbundle)
- FFmpeg binaries in the `bin` folder

### Alternative Installation (Windows)

For Windows, jbundle support is not yet available. You can use the traditional JAR-based release:
1. Download the `.rar` file from [Itch.io](https://fedeiatech.itch.io/spritelab).
2. Extract the contents (Ensure the `bin` folder containing `ffmpeg.exe` is in the same directory).
3. Requires Java 21 or higher to be installed
4. Run `SpriteLab.exe` or `java -jar SpriteLab.jar`

---

## Development (Build)

* **Language:** Java 21 (JavaFX).
* **Dependencies:** FFmpeg (Local binaries required in `/bin`).
* **Build Tool:** jbundle (creates self-contained binaries with no JVM required).
* **License:** MIT.

**Building from source with jbundle:**

jbundle packages your Java application into a self-contained binary with an embedded JVM - no Java installation required to run!

```bash
# Install jbundle (requires Rust/Cargo)
git clone https://github.com/avelino/jbundle.git
cd jbundle
# Pin to a specific version for reproducible builds
git checkout f722ab543a57e7fc496656c72198c71efe52e89c
cargo install --path .

# Build self-contained binary (no JVM needed to run!)
cd /path/to/SpriteLab

# For Linux (amd64)
jbundle build --input . --output ./dist/SpriteLab --java-version 21 --target linux-x64 --profile cli

# For macOS ARM64 (Apple Silicon)
jbundle build --input . --output ./dist/SpriteLab --java-version 21 --target macos-aarch64 --profile cli

# Note: Windows is not yet supported by jbundle

# The output binary includes everything needed to run - no Java required!
```

**Alternative: Traditional Maven Build (requires Java 21 to run):**

```bash
# Build JAR (requires Java 21 to run)
mvn clean package
```

### GitHub Actions & Release Process

The repository includes automated build workflows using jbundle:

* **CI Build** (`.github/workflows/ci-build.yml`): Runs on every push/PR to build and test self-contained binaries for Linux and macOS
* **Release Builds** (`.github/workflows/release-builds.yml`): Automatically creates distribution packages on GitHub releases

**To create a new release:**
1. Create a new tag: `git tag v0.3.2`
2. Push the tag: `git push origin v0.3.2`
3. Create a GitHub release from the tag
4. The workflow will automatically build and attach:
   - `SpriteLab-Linux-amd64.tar.gz` (Self-contained Linux binary + FFmpeg - no JVM required!)
   - `SpriteLab-macOS-arm64.tar.gz` (Self-contained macOS ARM64 binary + FFmpeg - no JVM required!)

Each release package includes:
- Self-contained SpriteLab binary (with embedded JVM)
- FFmpeg binary
- Launch script (`run-native.sh`)
- README and LICENSE files

**About jbundle:**

jbundle (https://github.com/avelino/jbundle) is a tool that packages Java applications into self-contained binaries with an embedded JDK. The resulting binaries:
- Run anywhere without requiring Java installation
- Include optimized startup with AppCDS by default
- Support CLI profile for fast startup
- Work across platforms (Linux, macOS, Windows)

Developed by **FedeiaTech**.