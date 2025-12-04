.class public Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/InvalidationTracker$WeakObserver;,
        Landroidx/room/InvalidationTracker$ObservedTableTracker;,
        Landroidx/room/InvalidationTracker$Observer;,
        Landroidx/room/InvalidationTracker$ObserverWrapper;
    }
.end annotation


# static fields
.field private static final CREATE_TRACKING_TABLE_SQL:Ljava/lang/String; = "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

.field private static final INVALIDATED_COLUMN_NAME:Ljava/lang/String; = "invalidated"

.field static final RESET_UPDATED_TABLES_SQL:Ljava/lang/String; = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

.field static final SELECT_UPDATED_TABLES_SQL:Ljava/lang/String; = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

.field private static final TABLE_ID_COLUMN_NAME:Ljava/lang/String; = "table_id"

.field private static final TRIGGERS:[Ljava/lang/String;

.field private static final UPDATE_TABLE_NAME:Ljava/lang/String; = "room_table_modification_log"


# instance fields
.field volatile mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

.field final mDatabase:Landroidx/room/RoomDatabase;

.field private volatile mInitialized:Z

.field private final mInvalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

.field private mMultiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

.field private mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

.field final mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/room/InvalidationTracker$Observer;",
            "Landroidx/room/InvalidationTracker$ObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field final mTableIdLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mTableNames:[Ljava/lang/String;

.field private mViewTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 7
    .param p1, "database"    # Landroidx/room/RoomDatabase;
    .param p4, "tableNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 133
    .local p2, "shadowTablesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "viewTables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-boolean v1, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 107
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    .line 357
    new-instance v0, Landroidx/room/InvalidationTracker$1;

    invoke-direct {v0, p0}, Landroidx/room/InvalidationTracker$1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 135
    new-instance v0, Landroidx/room/InvalidationTracker$ObservedTableTracker;

    array-length v1, p4

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;-><init>(I)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    .line 137
    iput-object p3, p0, Landroidx/room/InvalidationTracker;->mViewTables:Ljava/util/Map;

    .line 138
    new-instance v0, Landroidx/room/InvalidationLiveDataContainer;

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-direct {v0, v1}, Landroidx/room/InvalidationLiveDataContainer;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mInvalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

    .line 139
    array-length v0, p4

    .line 140
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 141
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    aget-object v2, p4, v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "tableName":Ljava/lang/String;
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    aget-object v3, p4, v1

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "shadowTableName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 146
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_1

    .line 148
    :cond_0
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aput-object v2, v4, v1

    .line 141
    .end local v2    # "tableName":Ljava/lang/String;
    .end local v3    # "shadowTableName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "id":I
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .local v2, "shadowTableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .restart local v3    # "shadowTableName":Ljava/lang/String;
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "tableName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v2    # "shadowTableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "shadowTableName":Ljava/lang/String;
    .end local v4    # "tableName":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 160
    :cond_3
    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 2
    .param p1, "database"    # Landroidx/room/RoomDatabase;
    .param p2, "tableNames"    # [Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "triggerType"    # Ljava/lang/String;

    .line 199
    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "room_table_modification_trigger_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    return-void
.end method

.method private resolveViews([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "names"    # [Ljava/lang/String;

    .line 296
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 297
    .local v0, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 298
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "lowercase":Ljava/lang/String;
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mViewTables:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mViewTables:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 302
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "lowercase":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private startTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 9
    .param p1, "writableDb"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 222
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 224
    .local v6, "trigger":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {v1, v0, v6}, Landroidx/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v7, " AFTER "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v7, " ON `"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v7, "` BEGIN UPDATE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v7, "room_table_modification_log"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v7, " SET "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "invalidated"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = 1"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v8, " WHERE "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "table_id"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v8, " AND "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v7, "; END"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    .end local v6    # "trigger":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method private stopTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 8
    .param p1, "writableDb"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .line 208
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 209
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 211
    .local v6, "trigger":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    const-string v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {v1, v0, v6}, Landroidx/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    .end local v6    # "trigger":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method private validateAndResolveTableNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "tableNames"    # [Ljava/lang/String;

    .line 280
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker;->resolveViews([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "resolved":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 282
    .local v3, "tableName":Ljava/lang/String;
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    .end local v3    # "tableName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .restart local v3    # "tableName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no table with name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v3    # "tableName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 8
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;

    .line 258
    iget-object v0, p1, Landroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/InvalidationTracker;->resolveViews([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "tableNames":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 260
    .local v1, "tableIds":[I
    array-length v2, v0

    .line 262
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 263
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Ljava/util/HashMap;

    aget-object v5, v0, v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 264
    .local v4, "tableId":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 262
    .end local v4    # "tableId":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .restart local v4    # "tableId":Ljava/lang/Integer;
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no table with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    .end local v3    # "i":I
    .end local v4    # "tableId":Ljava/lang/Integer;
    :cond_1
    new-instance v3, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-direct {v3, p1, v1, v0}, Landroidx/room/InvalidationTracker$ObserverWrapper;-><init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V

    .line 271
    .local v3, "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v4

    .line 272
    :try_start_0
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v5, p1, v3}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/room/InvalidationTracker$ObserverWrapper;

    .line 273
    .local v5, "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    if-nez v5, :cond_2

    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v4, v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onAdded([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 277
    :cond_2
    return-void

    .line 273
    .end local v5    # "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;

    .line 320
    new-instance v0, Landroidx/room/InvalidationTracker$WeakObserver;

    invoke-direct {v0, p0, p1}, Landroidx/room/InvalidationTracker$WeakObserver;-><init>(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V

    invoke-virtual {p0, v0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 321
    return-void
.end method

.method public createLiveData([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1, "tableNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 559
    .local p2, "computeFunction":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1, "tableNames"    # [Ljava/lang/String;
    .param p2, "inTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 580
    .local p3, "computeFunction":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mInvalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

    .line 581
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker;->validateAndResolveTableNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1, p2, p3}, Landroidx/room/InvalidationLiveDataContainer;->create([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method ensureInitialization()Z
    .locals 3

    .line 343
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 344
    return v1

    .line 346
    :cond_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 350
    :cond_1
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_2

    .line 351
    const-string v0, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v1

    .line 354
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method internalInit(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 180
    const-string v0, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 182
    monitor-exit p0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs notifyObserversByTableNames([Ljava/lang/String;)V
    .locals 4
    .param p1, "tables"    # [Ljava/lang/String;

    .line 470
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 472
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/room/InvalidationTracker$Observer;Landroidx/room/InvalidationTracker$ObserverWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v3}, Landroidx/room/InvalidationTracker$Observer;->isRemote()Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-virtual {v3, p1}, Landroidx/room/InvalidationTracker$ObserverWrapper;->notifyByTableNames([Ljava/lang/String;)V

    .line 475
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/room/InvalidationTracker$Observer;Landroidx/room/InvalidationTracker$ObserverWrapper;>;"
    :cond_0
    goto :goto_0

    .line 476
    :cond_1
    monitor-exit v0

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refreshVersionsAsync()V
    .locals 3

    .line 441
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    return-void
.end method

.method public refreshVersionsSync()V
    .locals 1

    .line 454
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 455
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 456
    return-void
.end method

.method public removeObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 3
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;

    .line 333
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/InvalidationTracker$ObserverWrapper;

    .line 335
    .local v1, "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    iget-object v2, v1, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    invoke-virtual {v0, v2}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onRemoved([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 339
    :cond_0
    return-void

    .line 335
    .end local v1    # "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method startMultiInstanceInvalidation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 186
    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 187
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, p2, p0, v1}, Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mMultiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    .line 188
    return-void
.end method

.method stopMultiInstanceInvalidation()V
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mMultiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationClient;->stop()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mMultiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    .line 195
    :cond_0
    return-void
.end method

.method syncTriggers()V
    .locals 1

    .line 535
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 539
    return-void
.end method

.method syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 480
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    return-void

    .line 488
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 489
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :try_start_1
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 494
    .local v1, "tablesToSync":[I
    if-nez v1, :cond_1

    .line 516
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 495
    return-void

    .line 497
    :cond_1
    :try_start_3
    array-length v2, v1

    .line 498
    .local v2, "limit":I
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 500
    const/4 v3, 0x0

    .local v3, "tableId":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 501
    :try_start_4
    aget v4, v1, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 506
    :cond_2
    invoke-direct {p0, p1, v3}, Landroidx/room/InvalidationTracker;->stopTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    goto :goto_2

    .line 503
    :cond_3
    invoke-direct {p0, p1, v3}, Landroidx/room/InvalidationTracker;->startTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    .line 504
    nop

    .line 500
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 510
    .end local v3    # "tableId":I
    :cond_4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    :try_start_5
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 513
    nop

    .line 514
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v3}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 516
    .end local v1    # "tablesToSync":[I
    .end local v2    # "limit":I
    :try_start_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 517
    nop

    .line 518
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    goto :goto_0

    .line 512
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "tablesToSync":[I
    .restart local v2    # "limit":I
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 513
    nop

    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .end local p0    # "this":Landroidx/room/InvalidationTracker;
    .end local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 516
    .end local v1    # "tablesToSync":[I
    .end local v2    # "limit":I
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local p0    # "this":Landroidx/room/InvalidationTracker;
    .restart local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 517
    nop

    .end local p0    # "this":Landroidx/room/InvalidationTracker;
    .end local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    throw v1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 519
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local p0    # "this":Landroidx/room/InvalidationTracker;
    .restart local p1    # "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "exception":Ljava/lang/RuntimeException;
    const-string v1, "ROOM"

    const-string v2, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    return-void
.end method
