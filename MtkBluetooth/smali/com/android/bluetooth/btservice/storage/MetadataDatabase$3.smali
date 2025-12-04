.class Lcom/android/bluetooth/btservice/storage/MetadataDatabase$3;
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

    .line 185
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    .line 189
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS `metadata_tmp` (`address` TEXT NOT NULL, `migrated` INTEGER NOT NULL, `a2dpSupportsOptionalCodecs` INTEGER NOT NULL, `a2dpOptionalCodecsEnabled` INTEGER NOT NULL, `a2dp_connection_policy` INTEGER, `a2dp_sink_connection_policy` INTEGER, `hfp_connection_policy` INTEGER, `hfp_client_connection_policy` INTEGER, `hid_host_connection_policy` INTEGER, `pan_connection_policy` INTEGER, `pbap_connection_policy` INTEGER, `pbap_client_connection_policy` INTEGER, `map_connection_policy` INTEGER, `sap_connection_policy` INTEGER, `hearing_aid_connection_policy` INTEGER, `map_client_connection_policy` INTEGER, `manufacturer_name` BLOB, `model_name` BLOB, `software_version` BLOB, `hardware_version` BLOB, `companion_app` BLOB, `main_icon` BLOB, `is_untethered_headset` BLOB, `untethered_left_icon` BLOB, `untethered_right_icon` BLOB, `untethered_case_icon` BLOB, `untethered_left_battery` BLOB, `untethered_right_battery` BLOB, `untethered_case_battery` BLOB, `untethered_left_charging` BLOB, `untethered_right_charging` BLOB, `untethered_case_charging` BLOB, `enhanced_settings_ui_uri` BLOB, PRIMARY KEY(`address`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    const-string v0, "INSERT INTO metadata_tmp (address, migrated, a2dpSupportsOptionalCodecs, a2dpOptionalCodecsEnabled, a2dp_connection_policy, a2dp_sink_connection_policy, hfp_connection_policy,hfp_client_connection_policy, hid_host_connection_policy,pan_connection_policy, pbap_connection_policy,pbap_client_connection_policy, map_connection_policy, sap_connection_policy, hearing_aid_connection_policy, map_client_connection_policy, manufacturer_name, model_name, software_version, hardware_version, companion_app, main_icon, is_untethered_headset, untethered_left_icon, untethered_right_icon, untethered_case_icon, untethered_left_battery, untethered_right_battery, untethered_case_battery, untethered_left_charging, untethered_right_charging, untethered_case_charging, enhanced_settings_ui_uri) SELECT address, migrated, a2dpSupportsOptionalCodecs, a2dpOptionalCodecsEnabled, a2dp_priority, a2dp_sink_priority, hfp_priority, hfp_client_priority, hid_host_priority, pan_priority, pbap_priority, pbap_client_priority, map_priority, sap_priority, hearing_aid_priority, map_client_priority, CAST (manufacturer_name AS BLOB), CAST (model_name AS BLOB), CAST (software_version AS BLOB), CAST (hardware_version AS BLOB), CAST (companion_app AS BLOB), CAST (main_icon AS BLOB), CAST (is_untethered_headset AS BLOB), CAST (untethered_left_icon AS BLOB), CAST (untethered_right_icon AS BLOB), CAST (untethered_case_icon AS BLOB), CAST (untethered_left_battery AS BLOB), CAST (untethered_right_battery AS BLOB), CAST (untethered_case_battery AS BLOB), CAST (untethered_left_charging AS BLOB), CAST (untethered_right_charging AS BLOB), CAST (untethered_case_charging AS BLOB), CAST (enhanced_settings_ui_uri AS BLOB)FROM metadata"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    const-string v0, "UPDATE metadata_tmp SET a2dp_connection_policy = 100 WHERE a2dp_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v0, "UPDATE metadata_tmp SET a2dp_sink_connection_policy = 100 WHERE a2dp_sink_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v0, "UPDATE metadata_tmp SET hfp_connection_policy = 100 WHERE hfp_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "UPDATE metadata_tmp SET hfp_client_connection_policy = 100 WHERE hfp_client_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v0, "UPDATE metadata_tmp SET hid_host_connection_policy = 100 WHERE hid_host_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const-string v0, "UPDATE metadata_tmp SET pan_connection_policy = 100 WHERE pan_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v0, "UPDATE metadata_tmp SET pbap_connection_policy = 100 WHERE pbap_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v0, "UPDATE metadata_tmp SET pbap_client_connection_policy = 100 WHERE pbap_client_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "UPDATE metadata_tmp SET map_connection_policy = 100 WHERE map_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "UPDATE metadata_tmp SET sap_connection_policy = 100 WHERE sap_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v0, "UPDATE metadata_tmp SET hearing_aid_connection_policy = 100 WHERE hearing_aid_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    const-string v0, "UPDATE metadata_tmp SET map_client_connection_policy = 100 WHERE map_client_connection_policy = 1000"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string v0, "DROP TABLE `metadata`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    const-string v0, "ALTER TABLE `metadata_tmp` RENAME TO `metadata`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 280
    const-string v1, "SELECT * FROM metadata"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 281
    if-eqz p1, :cond_0

    const-string v1, "a2dp_connection_policy"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    throw v0
.end method
