.class Lcom/android/bluetooth/btservice/storage/MetadataDatabase$4;
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

    .line 289
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    .line 293
    :try_start_0
    const-string v0, "ALTER TABLE metadata ADD COLUMN `last_active_time` INTEGER NOT NULL DEFAULT -1"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string v0, "ALTER TABLE metadata ADD COLUMN `is_active_a2dp_device` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 299
    const-string v1, "SELECT * FROM metadata"

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 300
    if-eqz p1, :cond_0

    const-string v1, "last_active_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    throw v0
.end method
