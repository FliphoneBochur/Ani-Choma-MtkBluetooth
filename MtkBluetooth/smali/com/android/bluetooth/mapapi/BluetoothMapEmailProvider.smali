.class public abstract Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothMapEmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;,
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;,
        Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MATCH_ACCOUNT:I = 0x1

.field private static final MATCH_FOLDER:I = 0x3

.field private static final MATCH_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothMapEmailProvider"


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;

.field private mPipeReader:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

.field private mPipeWriter:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    new-instance v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;-><init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeReader:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

    .line 62
    new-instance v0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;-><init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeWriter:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

    return-void
.end method

.method public static getAccountId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 722
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 723
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 726
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AccountId pressent in URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openInversePipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 373
    new-instance v9, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move-object v3, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$1;-><init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 385
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {v9, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    const/4 p1, 0x1

    aget-object p1, v8, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 388
    :catch_0
    move-exception p1

    .line 389
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "failure making pipe"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract UpdateMimeMessageFromStream(Ljava/io/FileInputStream;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract WriteMessageToStream(JJZZLjava/io/FileOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .line 88
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 91
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "Account"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "#/Folder"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "#/Message"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_MAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mResolver:Landroid/content/ContentResolver;

    .line 105
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must be protected by android.permission.BLUETOOTH_MAP"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must be exported"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call(): method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " arg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ThreadId: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 674
    const-string v2, "BluetoothMapEmailProvider"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    const-string p2, "UpdateFolder"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 680
    const-string p1, "UpdateAccountId"

    const-wide/16 v3, -0x1

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 681
    cmp-long p1, v5, v3

    if-nez p1, :cond_0

    .line 682
    const-string p1, "No account ID in CALL"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    nop

    .line 697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    return-object p2

    .line 685
    :cond_0
    :try_start_1
    const-string p1, "UpdateFolderId"

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 686
    cmp-long p1, v7, v3

    if-nez p1, :cond_1

    .line 687
    const-string p1, "No folder ID in CALL"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    nop

    .line 697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    return-object p2

    .line 690
    :cond_1
    :try_start_2
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->syncFolder(JJ)I

    move-result p1

    .line 691
    if-nez p1, :cond_2

    .line 692
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    return-object p1

    .line 694
    :cond_2
    nop

    .line 697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    return-object p2

    .line 697
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    nop

    .line 699
    return-object p2

    .line 697
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    throw p1
.end method

.method protected convertProjection([Ljava/lang/String;Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 506
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 507
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_0
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete(): uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapEmailProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    nop

    .line 406
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 407
    if-eqz p2, :cond_3

    .line 411
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_2

    .line 417
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 418
    if-eqz p1, :cond_1

    .line 422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 424
    :try_start_0
    const-string v3, "Message"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    return p1

    .line 428
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown table name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    nop

    .line 433
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    const/4 p1, 0x0

    return p1

    .line 433
    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    throw p1

    .line 419
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table missing in URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract deleteMessage(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected abstract getContentUri()Landroid/net/Uri;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 294
    const-string p1, "Email"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 455
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_2

    .line 459
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string v2, "folder_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 461
    if-eqz p2, :cond_1

    .line 466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert(): uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - getLastPathSegment() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    const-string v5, "BluetoothMapEmailProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :try_start_0
    const-string v4, "Message"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->insertMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert() ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    return-object p1

    .line 477
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown table name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    const/4 p1, 0x0

    .line 481
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    return-object p1

    .line 481
    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    throw p1

    .line 462
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FolderId missing in ContentValues"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table missing in URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract insertMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected onAccountChanged(Ljava/lang/String;)V
    .locals 3

    .line 241
    nop

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    if-nez p1, :cond_1

    .line 247
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {v0, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 252
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountChanged() accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " URI: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothMapEmailProvider"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 255
    return-void
.end method

.method protected onMessageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 266
    nop

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    if-nez p1, :cond_1

    .line 273
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    if-nez p2, :cond_2

    .line 276
    invoke-static {v0, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 283
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageChanged() accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " URI: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapEmailProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 287
    return-void
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile(): uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - getLastPathSegment() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    const-string v3, "BluetoothMapEmailProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_0
    const-string v2, "w"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 338
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeReader:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->openInversePipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    return-object p1

    .line 340
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    iget-object v9, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mPipeWriter:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    return-object p1

    .line 345
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 342
    :catch_0
    move-exception p1

    .line 343
    :try_start_2
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    nop

    .line 347
    const/4 p1, 0x0

    return-object p1

    .line 345
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 522
    nop

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 527
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 528
    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->queryFolder(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    return-object p1

    .line 533
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported Uri "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 530
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 531
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    return-object p1

    .line 525
    :cond_2
    :try_start_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    return-object p1

    .line 536
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    throw p1
.end method

.method protected abstract queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryFolder(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public shutdown()V
    .locals 0

    .line 716
    return-void
.end method

.method protected abstract syncFolder(JJ)I
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 600
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    .line 601
    if-eqz p4, :cond_7

    .line 604
    if-nez p3, :cond_6

    .line 609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 611
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update(): uri="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - getLastPathSegment() = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 611
    const-string v2, "BluetoothMapEmailProvider"

    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    const-string p3, "Account"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "_id"

    if-eqz p3, :cond_2

    .line 616
    :try_start_1
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 617
    if-eqz p1, :cond_1

    .line 620
    const-string p3, "flag_expose"

    .line 621
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 622
    if-eqz p2, :cond_0

    .line 625
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->updateAccount(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    return p1

    .line 623
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expose flag missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_2
    const-string p3, "Folder"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    .line 627
    nop

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    return v4

    .line 628
    :cond_3
    :try_start_3
    const-string p3, "Message"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 629
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    .line 631
    if-eqz p3, :cond_4

    .line 634
    const-string p4, "folder_id"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    .line 635
    const-string v2, "flag_read"

    .line 636
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    .line 637
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    return p1

    .line 632
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown table name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 642
    nop

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    return v4

    .line 645
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw p1

    .line 605
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selection shall not be used, ContentValues shall contain the data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table missing in URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract updateAccount(Ljava/lang/String;I)I
.end method

.method protected abstract updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I
.end method
