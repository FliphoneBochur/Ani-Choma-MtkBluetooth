.class public final Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;
.super Ljava/lang/Object;
.source "MetadataDao_Impl.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/storage/MetadataDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfMetadata:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$1;-><init>(Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__insertionAdapterOfMetadata:Landroidx/room/EntityInsertionAdapter;

    .line 189
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$2;-><init>(Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 196
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl$3;-><init>(Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 203
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 221
    nop

    .line 222
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 223
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 227
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 229
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 230
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 233
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 234
    nop

    .line 235
    return-void

    .line 232
    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 233
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 234
    throw p1
.end method

.method public deleteAll()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 243
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 244
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 247
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 247
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 248
    throw v1
.end method

.method public varargs insert([Lcom/android/bluetooth/btservice/storage/Metadata;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__insertionAdapterOfMetadata:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 214
    throw p1
.end method

.method public load()Ljava/util/List;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;"
        }
    .end annotation

    .line 254
    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM metadata ORDER BY last_active_time DESC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 255
    iget-object v3, v0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 256
    iget-object v0, v0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 258
    :try_start_0
    const-string v0, "address"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 259
    const-string v5, "migrated"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 260
    const-string v6, "a2dpSupportsOptionalCodecs"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 261
    const-string v7, "a2dpOptionalCodecsEnabled"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 262
    const-string v8, "last_active_time"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 263
    const-string v9, "is_active_a2dp_device"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 264
    const-string v10, "a2dp_connection_policy"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 265
    const-string v11, "a2dp_sink_connection_policy"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 266
    const-string v12, "hfp_connection_policy"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 267
    const-string v13, "hfp_client_connection_policy"

    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 268
    const-string v14, "hid_host_connection_policy"

    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 269
    const-string v15, "pan_connection_policy"

    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 270
    const-string v2, "pbap_connection_policy"

    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 271
    const-string v3, "pbap_client_connection_policy"

    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 272
    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "map_connection_policy"

    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 273
    move/from16 v17, v9

    const-string v9, "sap_connection_policy"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 274
    move/from16 v18, v8

    const-string v8, "hearing_aid_connection_policy"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 275
    move/from16 v19, v7

    const-string v7, "map_client_connection_policy"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 276
    move/from16 v20, v6

    const-string v6, "manufacturer_name"

    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 277
    move/from16 v21, v5

    const-string v5, "model_name"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 278
    move/from16 v22, v5

    const-string v5, "software_version"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 279
    move/from16 v23, v5

    const-string v5, "hardware_version"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 280
    move/from16 v24, v5

    const-string v5, "companion_app"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 281
    move/from16 v25, v5

    const-string v5, "main_icon"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 282
    move/from16 v26, v5

    const-string v5, "is_untethered_headset"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 283
    move/from16 v27, v5

    const-string v5, "untethered_left_icon"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 284
    move/from16 v28, v5

    const-string v5, "untethered_right_icon"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 285
    move/from16 v29, v5

    const-string v5, "untethered_case_icon"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 286
    move/from16 v30, v5

    const-string v5, "untethered_left_battery"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 287
    move/from16 v31, v5

    const-string v5, "untethered_right_battery"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 288
    move/from16 v32, v5

    const-string v5, "untethered_case_battery"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 289
    move/from16 v33, v5

    const-string v5, "untethered_left_charging"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 290
    move/from16 v34, v5

    const-string v5, "untethered_right_charging"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 291
    move/from16 v35, v5

    const-string v5, "untethered_case_charging"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 292
    move/from16 v36, v5

    const-string v5, "enhanced_settings_ui_uri"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 293
    move/from16 v37, v5

    new-instance v5, Ljava/util/ArrayList;

    move/from16 v38, v6

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 297
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-nez v39, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    move/from16 v39, v0

    move-object/from16 v40, v5

    const/4 v0, 0x0

    goto :goto_2

    .line 300
    :cond_1
    :goto_1
    move/from16 v39, v0

    new-instance v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;-><init>()V

    .line 301
    move-object/from16 v40, v5

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_connection_policy:I

    .line 302
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->a2dp_sink_connection_policy:I

    .line 303
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_connection_policy:I

    .line 304
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hfp_client_connection_policy:I

    .line 305
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hid_host_connection_policy:I

    .line 306
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pan_connection_policy:I

    .line 307
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_connection_policy:I

    .line 308
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->pbap_client_connection_policy:I

    .line 309
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_connection_policy:I

    .line 310
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->sap_connection_policy:I

    .line 311
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->hearing_aid_connection_policy:I

    .line 312
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v0, Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;->map_client_connection_policy:I

    .line 317
    :goto_2
    new-instance v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    invoke-direct {v5}, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;-><init>()V

    .line 318
    move/from16 v41, v1

    move/from16 v1, v38

    move/from16 v38, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->manufacturer_name:[B

    .line 319
    move/from16 v2, v22

    move/from16 v22, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->model_name:[B

    .line 320
    move/from16 v1, v23

    move/from16 v23, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->software_version:[B

    .line 321
    move/from16 v2, v24

    move/from16 v24, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->hardware_version:[B

    .line 322
    move/from16 v1, v25

    move/from16 v25, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->companion_app:[B

    .line 323
    move/from16 v2, v26

    move/from16 v26, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->main_icon:[B

    .line 324
    move/from16 v1, v27

    move/from16 v27, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->is_untethered_headset:[B

    .line 325
    move/from16 v2, v28

    move/from16 v28, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_icon:[B

    .line 326
    move/from16 v1, v29

    move/from16 v29, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_icon:[B

    .line 327
    move/from16 v2, v30

    move/from16 v30, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_icon:[B

    .line 328
    move/from16 v1, v31

    move/from16 v31, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_battery:[B

    .line 329
    move/from16 v2, v32

    move/from16 v32, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_battery:[B

    .line 330
    move/from16 v1, v33

    move/from16 v33, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_battery:[B

    .line 331
    move/from16 v2, v34

    move/from16 v34, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_left_charging:[B

    .line 332
    move/from16 v1, v35

    move/from16 v35, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_right_charging:[B

    .line 333
    move/from16 v2, v36

    move/from16 v36, v1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->untethered_case_charging:[B

    .line 334
    move/from16 v1, v37

    move/from16 v37, v2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;->enhanced_settings_ui_uri:[B

    .line 335
    new-instance v2, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-direct {v2, v6}, Lcom/android/bluetooth/btservice/storage/Metadata;-><init>(Ljava/lang/String;)V

    .line 337
    move/from16 v6, v21

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 338
    const/16 v42, 0x1

    if-eqz v21, :cond_2

    move/from16 v21, v1

    move/from16 v1, v42

    goto :goto_3

    :cond_2
    move/from16 v21, v1

    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->migrated:Z

    .line 339
    move/from16 v1, v20

    move/from16 v20, v3

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    .line 340
    move/from16 v3, v19

    move/from16 v19, v1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    .line 341
    move/from16 v43, v6

    move/from16 v1, v18

    move/from16 v18, v7

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    .line 343
    move/from16 v6, v17

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 344
    if-eqz v7, :cond_3

    move/from16 v7, v42

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_4
    iput-boolean v7, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 345
    iput-object v0, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->profileConnectionPolicies:Lcom/android/bluetooth/btservice/storage/ProfilePrioritiesEntity;

    .line 346
    iput-object v5, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->publicMetadata:Lcom/android/bluetooth/btservice/storage/CustomizedMetadataEntity;

    .line 347
    move-object/from16 v0, v40

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    move-object v5, v0

    move/from16 v17, v6

    move/from16 v7, v18

    move/from16 v2, v38

    move/from16 v0, v39

    move/from16 v18, v1

    move/from16 v38, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v31, v32

    move/from16 v32, v33

    move/from16 v33, v34

    move/from16 v34, v35

    move/from16 v35, v36

    move/from16 v36, v37

    move/from16 v1, v41

    move/from16 v37, v21

    move/from16 v21, v43

    move/from16 v44, v19

    move/from16 v19, v3

    move/from16 v3, v20

    move/from16 v20, v44

    goto/16 :goto_0

    .line 349
    :cond_4
    move-object v0, v5

    .line 351
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 352
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 349
    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 352
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 353
    throw v0
.end method
