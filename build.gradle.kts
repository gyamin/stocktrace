import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.5.10"
    application
}

group = "me.gyamin"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(kotlin("test"))
    implementation("org.jsoup:jsoup:1.14.3")
    implementation("org.postgresql:postgresql:42.3.1")
    implementation("org.jdbi:jdbi3-kotlin:3.26.0")
    implementation("org.jdbi:jdbi3-kotlin-sqlobject:3.26.0")
    implementation("org.jetbrains.kotlin:kotlin-reflect:1.5.32")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.5.2")
    implementation("com.opencsv:opencsv:5.5")
    implementation("org.apache.logging.log4j:log4j-api:2.15.0")
    implementation("org.apache.logging.log4j:log4j-core:2.15.0")
    implementation("org.apache.logging.log4j:log4j-api-kotlin:1.1.0")
}

tasks.test {
    useJUnitPlatform()
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "16"
}

application {
    mainClass.set("MainKt")
}