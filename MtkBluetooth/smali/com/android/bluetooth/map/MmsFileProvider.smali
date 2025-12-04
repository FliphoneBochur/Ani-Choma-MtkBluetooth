.class public Lcom/android/bluetooth/map/MmsFileProvider;
.super Landroid/content/ContentProvider;
.source "MmsFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final TAG:Ljava/lang/String; = "BluetoothMmsFileProvider"


# instance fields
.field private mPipeWriter:Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "content://com.android.bluetooth.map.MmsFileProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/MmsFileProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 43
    new-instance v0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;-><init>(Lcom/android/bluetooth/map/MmsFileProvider;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/MmsFileProvider;->mPipeWriter:Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 69
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 81
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 63
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 87
    const-string v0, "Unable to extract message handle from: "

    if-eqz p2, :cond_0

    .line 91
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 96
    sget-object p1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 98
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/map/MmsFileProvider;->mPipeWriter:Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/map/MmsFileProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 92
    :catch_0
    move-exception p2

    .line 93
    const-string v1, "BluetoothMmsFileProvider"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 88
    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 57
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 75
    const/4 p1, 0x0

    return p1
.end method
