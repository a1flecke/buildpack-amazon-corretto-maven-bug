pack build --verbose --timestamps corretto-bug \
  --platform ${BUILDPACKS_PLATFORM} \
  --builder paketobuildpacks/builder-jammy-tiny \
  --buildpack paketo-buildpacks/amazon-corretto,paketo-buildpacks/java \
  --env BP_JVM_VERSION=21 \
  --env BP_MAVEN_BUILD_ARGUMENTS="-Dmaven.test.skip=true --no-transfer-progress package --batch-mode" \
  --env BP_MAVEN_BUILT_ARTIFACT=target/
