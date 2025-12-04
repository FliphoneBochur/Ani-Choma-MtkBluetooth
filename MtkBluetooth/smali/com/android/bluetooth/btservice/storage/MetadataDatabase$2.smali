.class Lcom/android/bluetooth/btservice/storage/MetadataDatabase$2;
.super Landroidx/room/migration/Migration;
.source "MetadataDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 125
    const-string v0, "CREATE TABLE IF NOT EXISTS `metadata_tmp` (`address` TEXT NOT NULL, `migrated` INTEGER NOT NULL, `a2dpSupportsOptionalCodecs` INTEGER NOT NULL, `a2dpOptionalCodecsEnabled` INTEGER NOT NULL, `a2dp_priority` INTEGER, `a2dp_sink_priority` INTEGER, `hfp_priority` INTEGER, `hfp_client_priority` INTEGER, `hid_host_priority` INTEGER, `pan_priority` INTEGER, `pbap_priority` INTEGER, `pbap_client_priority` INTEGER, `map_priority` INTEGER, `sap_priority` INTEGER, `hearing_aid_priority` INTEGER, `map_client_priority` INTEGER, `manufacturer_name` BLOB, `model_name` BLOB, `software_version` BLOB, `hardware_version` BLOB, `companion_app` BLOB, `main_icon` BLOB, `is_untethered_headset` BLOB, `untethered_left_icon` BLOB, `untethered_right_icon` BLOB, `untethered_case_icon` BLOB, `untethered_left_battery` BLOB, `untethered_right_battery` BLOB, `untethered_case_battery` BLOB, `untethered_left_charging` BLOB, `untethered_right_charging` BLOB, `untethered_case_charging` BLOB, `enhanced_settings_ui_uri` BLOB, PRIMARY KEY(`address`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "INSERT INTO metadata_tmp (address, migrated, a2dpSupportsOptionalCodecs, a2dpOptionalCodecsEnabled, a2dp_priority, a2dp_sink_priority, hfp_priority, hfp_client_priority, hid_host_priority, pan_priority, pbap_priority, pbap_client_priority, map_priority, sap_priority, hearing_aid_priority, map_client_priority, manufacturer_name, model_name, software_version, hardware_version, companion_app, main_icon, is_untethered_headset, untethered_left_icon, untethered_right_icon, untethered_case_icon, untethered_left_battery, untethered_right_battery, untethered_case_battery, untethered_left_charging, untethered_right_charging, untethered_case_charging, enhanced_settings_ui_uri) SELECT address, migrated, a2dpSupportsOptionalCodecs, a2dpOptionalCodecsEnabled, a2dp_priority, a2dp_sink_priority, hfp_priority, hfp_client_priority, hid_host_priority, pan_priority, pbap_priority, pbap_client_priority, map_priority, sap_priority, hearing_aid_priority, map_client_priority, CAST (manufacturer_name AS BLOB), CAST (model_name AS BLOB), CAST (software_version AS BLOB), CAST (hardware_version AS BLOB), CAST (companion_app AS BLOB), CAST (main_icon AS BLOB), CAST (is_unthethered_headset AS BLOB), CAST (unthethered_left_icon AS BLOB), CAST (unthethered_right_icon AS BLOB), CAST (unthethered_case_icon AS BLOB), CAST (unthethered_left_battery AS BLOB), CAST (unthethered_right_battery AS BLOB), CAST (unthethered_case_battery AS BLOB), CAST (unthethered_left_charging AS BLOB), CAST (unthethered_right_charging AS BLOB), CAST (unthethered_case_charging AS BLOB), CAST (enhanced_settings_ui_uri AS BLOB)FROM metadata"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "DROP TABLE `metadata`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "ALTER TABLE `metadata_tmp` RENAME TO `metadata`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    return-void
.end method
