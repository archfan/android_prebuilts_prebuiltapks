# Prebuilt APKs

This is a collection of FOSS APKs, coupled with the respective Android.mk for an
easy integration in the Android build system.
These are just the official unmodified* prebuilt binaries, signed by the
corresponding developers.

__*except for com.google.android.maps, as the JAR and the XML have been extracted from the ZIP on the [microG's GitHub release page](https://github.com/microg/android_frameworks_mapsv1/releases)__

To include them in your build just add their name in CUSTOM_PACKAGES (for
example in vendor/lineage/config/common.mk).

The included APKs are:
 * FDroid packages (binaries sourced from [here](https://f-droid.org/packages/org.fdroid.fdroid/) and [here](https://f-droid.org/packages/org.fdroid.fdroid.privileged/))
   * FDroid: a catalogue of FOSS (Free and Open Source Software) applications for the Android platform
   * FDroid Privileged Extension: a FDroid extension to ease the installation/removal of apps
 * microG packages (binaries sourced from [here](https://microg.org/download.html) and [here](https://github.com/microg/android_frameworks_mapsv1))
   * GmsCore: the main component of microG, a FOSS reimplementation of the Google Play Services (requires GsfProxy and FakeStore for full functionality)
   * GsfProxy: a GmsCore proxy for legacy GCM compatibility
   * FakeStore: an empty package that mocks the existence of the Google Play Store
   * com.google.android.maps: legacy microG's mapsv1 reimplementation
 * LineageOS packages (binaries sourced from [here](https://download.lineageos.org/extras))
   * OpenWeatherMapWeatherProvider: "Open Weather Map" weather provider for the LineageOS' weather service

Use this Docker script to build /e/
```bash
sudo docker run \
-v "/srv/e/src:/srv/src:delegated" \
-v "/srv/e/zips:/srv/zips:delegated" \
-v "/srv/e/logs:/srv/logs:delegated" \
-v "/srv/e/ccache:/srv/ccache:delegated" \
-v "/srv/e/keys:/srv/keys:delegated" \
-v "/srv/e/local_manifests:/srv/local_manifests:delegated" \
-e "BRANCH_NAME=v1-pie" \
-e "SIGN_BUILDS=true" \
-e "INCLUDE_PROPRIETARY=false" \
-e "DEVICE_LIST=grus" \
-e "CUSTOM_PACKAGES='MuPDF GmsCore GsfProxy FakeStore com.google.android.maps.jar Mail BlissLauncher BlissIconPack AppleNlpBackend OpenWeatherMapWeatherProvider OsmAnd Weather Notes Tasks NominatimNlpBackend DroidGuard OpenKeychain Message Browser BrowserWebView Apps LibreOfficeViewer'" \
-e "SIGNATURE_SPOOFING=restricted" \
-e "OTA_URL=https://ota.asdf.eu/api" \
-e "REPO=https://gitlab.e.foundation/e/os/android.git" \
registry.gitlab.e.foundation:5000/e/os/docker-lineage-cicd:latest
```
