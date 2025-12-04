.class public final Lcom/android/bluetooth/opp/BluetoothOppProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothOppProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final DB_NAME:Ljava/lang/String; = "btopp.db"

.field private static final DB_TABLE:Ljava/lang/String; = "btopp"

.field private static final DB_VERSION:I = 0x2

.field private static final DB_VERSION_NOP_UPGRADE_FROM:I = 0x0

.field private static final DB_VERSION_NOP_UPGRADE_TO:I = 0x1

.field private static final SHARES:I = 0x1

.field private static final SHARES_ID:I = 0x2

.field private static final SHARE_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.btopp"

.field private static final SHARE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.btopp"

.field private static final TAG:Ljava/lang/String; = "BluetoothOppProvider"

.field private static final V:Z

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->V:Z

    .line 81
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 90
    const-string v1, "com.android.bluetooth.opp"

    const-string v2, "btopp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "btopp/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 200
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    :cond_0
    return-void
.end method

.method private static copyLong(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 207
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    :cond_0
    return-void
.end method

.method private static copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0

    .line 193
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 145
    const-string v0, "CREATE TABLE btopp(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, hint TEXT, _data TEXT, mimetype TEXT, direction INTEGER, destination TEXT, carrier_name TEXT, visibility INTEGER, confirm INTEGER, status INTEGER, total_bytes INTEGER, current_bytes INTEGER, timestamp INTEGER,scanned INTEGER); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    :try_start_1
    const-string v1, "BluetoothOppProvider"

    const-string v2, "createTable: Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 169
    const-string v0, "DROP TABLE IF EXISTS btopp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    const-string v1, "BluetoothOppProvider"

    const-string v2, "dropTable: Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 176
    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 402
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 404
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 405
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot delete unknown URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 409
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 410
    const-string v4, "( "

    if-ne v1, v3, :cond_2

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " )"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 413
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ) AND "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 416
    :cond_3
    const-string p2, ""

    .line 418
    :goto_1
    if-ne v1, v2, :cond_4

    .line 419
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ( _id = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ) "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 424
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 425
    const-string v1, "btopp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 426
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 433
    nop

    .line 434
    nop

    .line 439
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x8000

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 440
    return p2

    .line 432
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 427
    :catch_0
    move-exception p1

    .line 428
    :try_start_1
    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    .line 429
    const-string p2, "BluetoothOppProvider"

    const-string p3, "couldn\'t delete data from table"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 433
    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 181
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 182
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 186
    const-string p1, "vnd.android.cursor.item/vnd.android.btopp"

    return-object p1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI in getType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    const-string p1, "vnd.android.cursor.dir/vnd.android.btopp"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 221
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 223
    const-string v3, "uri"

    invoke-static {v3, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 224
    const-string v3, "hint"

    invoke-static {v3, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 225
    const-string v3, "mimetype"

    invoke-static {v3, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 226
    const-string v3, "destination"

    invoke-static {v3, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 228
    const-string v3, "carrier_name"

    invoke-static {v3, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 230
    const-string v3, "visibility"

    invoke-static {v3, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 231
    const-string v4, "total_bytes"

    invoke-static {v4, p2, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->copyLong(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 232
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    :cond_0
    const-string v3, "direction"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 236
    const-string v6, "confirm"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 238
    if-nez v4, :cond_1

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 241
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    .line 242
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 244
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v2, :cond_3

    if-nez v7, :cond_3

    .line 245
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 247
    :cond_3
    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "scanned"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v2, "timestamp"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 254
    if-nez p2, :cond_4

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 257
    :cond_4
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 261
    const-string v2, "btopp"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 263
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_5

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "couldn\'t insert "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "into btopp database"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothOppProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v3

    .line 268
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const v2, 0x8000

    invoke-virtual {p2, p1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 218
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert: Unknown/Invalid URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 2

    .line 275
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppProvider$DatabaseHelper;-><init>(Lcom/android/bluetooth/opp/BluetoothOppProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 284
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 287
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 288
    const-string v4, "btopp"

    if-eq v3, v0, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 293
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 294
    const-string v3, "_id="

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 296
    goto :goto_0

    .line 298
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 290
    :cond_1
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 291
    nop

    .line 301
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->V:Z

    const-string v9, "BluetoothOppProvider"

    if-eqz v0, :cond_9

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    const-string v3, "starting query, database is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    if-eqz v2, :cond_2

    .line 305
    const-string v3, "not "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_2
    const-string v3, "null; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v3, "] is "

    const/4 v4, 0x0

    const-string v5, "; "

    if-nez p2, :cond_3

    .line 309
    const-string v6, "projection is null; "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 310
    :cond_3
    array-length v6, p2

    if-nez v6, :cond_4

    .line 311
    const-string v6, "projection is empty; "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 313
    :cond_4
    move v6, v4

    :goto_1
    array-length v7, p2

    if-ge v6, v7, :cond_5

    .line 314
    const-string v7, "projection["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    aget-object v7, p2, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 321
    :cond_5
    :goto_2
    const-string v6, "selection is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    if-nez p4, :cond_6

    .line 325
    const-string v3, "selectionArgs is null; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 326
    :cond_6
    array-length v6, p4

    if-nez v6, :cond_7

    .line 327
    const-string v3, "selectionArgs is empty; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 329
    :cond_7
    nop

    :goto_3
    array-length v6, p4

    if-ge v4, v6, :cond_8

    .line 330
    const-string v6, "selectionArgs["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    aget-object v6, p4, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 337
    :cond_8
    :goto_4
    const-string v3, "sort is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 345
    if-nez p2, :cond_a

    .line 346
    const-string p1, "query failed in downloads database"

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 p1, 0x0

    return-object p1

    .line 350
    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 351
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 356
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 358
    nop

    .line 361
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 362
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot update unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 366
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 367
    const-string v4, "( "

    if-ne v1, v3, :cond_2

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " )"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 370
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ) AND "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 373
    :cond_3
    const-string p3, ""

    .line 375
    :goto_1
    if-ne v1, v2, :cond_4

    .line 376
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ( _id = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ) "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 381
    :cond_4
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_5

    .line 383
    :try_start_0
    const-string v1, "btopp"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 384
    :catch_0
    move-exception p2

    .line 385
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 386
    :goto_2
    goto :goto_3

    .line 388
    :cond_5
    nop

    .line 390
    nop

    .line 395
    :goto_3
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x8000

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    .line 397
    return v2
.end method
