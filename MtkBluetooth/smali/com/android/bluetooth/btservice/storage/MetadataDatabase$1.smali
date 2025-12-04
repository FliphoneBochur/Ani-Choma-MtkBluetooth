.class Lcom/android/bluetooth/btservice/storage/MetadataDatabase$1;
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

    .line 114
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 117
    const-string v0, "ALTER TABLE metadata ADD COLUMN `pbap_client_priority` INTEGER"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    return-void
.end method
