.class public final Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;
.super Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
.source "MetadataDatabase_Impl.java"


# instance fields
.field private volatile _metadataDao:Lcom/android/bluetooth/btservice/storage/MetadataDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 146
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->assertNotMainThread()V

    .line 147
    invoke-super {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 149
    :try_start_0
    invoke-super {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->beginTransaction()V

    .line 150
    const-string v3, "DELETE FROM `metadata`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-super {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->endTransaction()V

    .line 154
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void

    .line 153
    :catchall_0
    move-exception v3

    invoke-super {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->endTransaction()V

    .line 154
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 4

    .line 139
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 141
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "metadata"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 32
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;

    const/16 v2, 0x68

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl$1;-><init>(Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;I)V

    const-string v2, "d944677aac93d61a462f5324f4d71207"

    const-string v3, "01c473e1c023b5e7b0ffe9283a9a74f3"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 133
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    .line 134
    return-object p1
.end method

.method protected mMetadataDao()Lcom/android/bluetooth/btservice/storage/MetadataDao;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->_metadataDao:Lcom/android/bluetooth/btservice/storage/MetadataDao;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->_metadataDao:Lcom/android/bluetooth/btservice/storage/MetadataDao;

    return-object v0

    .line 166
    :cond_0
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->_metadataDao:Lcom/android/bluetooth/btservice/storage/MetadataDao;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/storage/MetadataDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->_metadataDao:Lcom/android/bluetooth/btservice/storage/MetadataDao;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/MetadataDatabase_Impl;->_metadataDao:Lcom/android/bluetooth/btservice/storage/MetadataDao;

    monitor-exit p0

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
