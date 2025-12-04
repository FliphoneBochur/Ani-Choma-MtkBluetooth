.class Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "MetadataDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;I)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 35
    const-string v0, "CREATE TABLE IF NOT EXISTS `metadata` (`address` TEXT NOT NULL, `migrated` INTEGER NOT NULL, `a2dpSupportsOptionalCodecs` INTEGER NOT NULL, `a2dpOptionalCodecsEnabled` INTEGER NOT NULL, `last_active_time` INTEGER NOT NULL, `is_active_a2dp_device` INTEGER NOT NULL, `a2dp_connection_policy` INTEGER, `a2dp_sink_connection_policy` INTEGER, `hfp_connection_policy` INTEGER, `hfp_client_connection_policy` INTEGER, `hid_host_connection_policy` INTEGER, `pan_connection_policy` INTEGER, `pbap_connection_policy` INTEGER, `pbap_client_connection_policy` INTEGER, `map_connection_policy` INTEGER, `sap_connection_policy` INTEGER, `hearing_aid_connection_policy` INTEGER, `map_client_connection_policy` INTEGER, `manufacturer_name` BLOB, `model_name` BLOB, `software_version` BLOB, `hardware_version` BLOB, `companion_app` BLOB, `main_icon` BLOB, `is_untethered_headset` BLOB, `untethered_left_icon` BLOB, `untethered_right_icon` BLOB, `untethered_case_icon` BLOB, `untethered_left_battery` BLOB, `untethered_right_battery` BLOB, `untethered_case_battery` BLOB, `untethered_left_charging` BLOB, `untethered_right_charging` BLOB, `untethered_case_charging` BLOB, `enhanced_settings_ui_uri` BLOB, PRIMARY KEY(`address`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'d944677aac93d61a462f5324f4d71207\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 42
    const-string v0, "DROP TABLE IF EXISTS `metadata`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$000(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$100(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$200(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$300(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$400(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$500(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$602(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$700(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 63
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$800(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$900(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;->this$0:Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->access$1000(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 77
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 72
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 73
    return-void
.end method

.method protected onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 10

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v3, "address"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "migrated"

    const-string v5, "INTEGER"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "migrated"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "a2dpSupportsOptionalCodecs"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "a2dpSupportsOptionalCodecs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "a2dpOptionalCodecsEnabled"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "a2dpOptionalCodecsEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "last_active_time"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "last_active_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "is_active_a2dp_device"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "is_active_a2dp_device"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "a2dp_connection_policy"

    const-string v5, "INTEGER"

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "a2dp_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "a2dp_sink_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "a2dp_sink_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "hfp_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "hfp_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "hfp_client_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "hfp_client_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "hid_host_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "hid_host_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "pan_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "pan_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "pbap_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "pbap_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "pbap_client_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "pbap_client_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "map_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "map_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "sap_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "sap_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "hearing_aid_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "hearing_aid_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "map_client_connection_policy"

    const-string v5, "INTEGER"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "map_client_connection_policy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "manufacturer_name"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "manufacturer_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "model_name"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "model_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "software_version"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "software_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "hardware_version"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "hardware_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "companion_app"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "companion_app"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "main_icon"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "main_icon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "is_untethered_headset"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "is_untethered_headset"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_left_icon"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_left_icon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_right_icon"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_right_icon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_case_icon"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_case_icon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_left_battery"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_left_battery"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_right_battery"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_right_battery"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_case_battery"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_case_battery"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_left_charging"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_left_charging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_right_charging"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_right_charging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "untethered_case_charging"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "untethered_case_charging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v4, "enhanced_settings_ui_uri"

    const-string v5, "BLOB"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "enhanced_settings_ui_uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 118
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "metadata"

    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 120
    invoke-static {p1, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    .line 121
    invoke-virtual {v4, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "metadata(com.android.bluetooth.btservice.storage.Metadata).\n Expected:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 126
    :cond_0
    new-instance p1, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
