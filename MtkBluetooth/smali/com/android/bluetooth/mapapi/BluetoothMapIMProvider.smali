.class public abstract Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothMapIMProvider.java"


# static fields
.field private static final D:Z = true

.field private static final MATCH_ACCOUNT:I = 0x1

.field private static final MATCH_CONVERSATION:I = 0x4

.field private static final MATCH_CONVOCONTACT:I = 0x5

.field private static final MATCH_MESSAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothMapIMProvider"


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getAccountId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 701
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 702
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 705
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 703
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


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .line 66
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 69
    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "Account"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "#/Message"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "#/Conversation"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "#/ConvoContact"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_MAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachInfo() mAuthority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapIMProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    .line 90
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 91
    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must be protected by android.permission.BLUETOOTH_MAP"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must be exported"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 619
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

    .line 620
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 619
    const-string v2, "BluetoothMapIMProvider"

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    nop

    .line 624
    :try_start_0
    const-string p2, "UpdateFolder"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 625
    const-string p1, "UpdateAccountId"

    const-wide/16 v4, -0x1

    invoke-virtual {p3, p1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 626
    cmp-long v6, p1, v4

    if-nez v6, :cond_0

    .line 627
    const-string p1, "No account ID in CALL"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    nop

    .line 651
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    return-object v3

    .line 630
    :cond_0
    :try_start_1
    const-string v6, "UpdateFolderId"

    invoke-virtual {p3, v6, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 631
    cmp-long p3, v6, v4

    if-nez p3, :cond_1

    .line 632
    const-string p1, "No folder ID in CALL"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    nop

    .line 651
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    return-object v3

    .line 635
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->syncFolder(JJ)I

    move-result p1

    .line 636
    goto :goto_0

    :cond_2
    const-string p2, "SetOwnerStatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 637
    const-string p1, "PresenceState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 638
    const-string p1, "PresenceStatus"

    .line 639
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 640
    const-string p1, "LastActive"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 641
    const-string p1, "ChatState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 642
    const-string p1, "ConversationId"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 643
    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->setOwnerStatus(ILjava/lang/String;JILjava/lang/String;)I

    move-result p1

    .line 645
    goto :goto_0

    :cond_3
    const-string p2, "SetBtState"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 646
    const-string p1, "BluetoothState"

    .line 647
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->setBluetoothStatus(Z)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 645
    :cond_4
    const/4 p1, -0x1

    .line 651
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    nop

    .line 653
    if-nez p1, :cond_5

    .line 654
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    .line 656
    :cond_5
    return-object v3

    .line 651
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
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

    .line 303
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 304
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 305
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

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-object v0
.end method

.method protected createContentValues(Ljava/util/Set;Ljava/util/Map;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 584
    new-instance v0, Landroid/content/ContentValues;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 585
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 586
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 587
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 588
    if-nez v3, :cond_0

    .line 589
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 590
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 591
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 592
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_2

    .line 593
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_1

    .line 594
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, [B

    if-eqz v4, :cond_3

    .line 595
    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 596
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 597
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 598
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 599
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 600
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 601
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 602
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_7

    .line 603
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 604
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Short;

    if-eqz v4, :cond_8

    .line 605
    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 606
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 607
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_1
    goto/16 :goto_0

    .line 609
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown data type in content value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 612
    :cond_a
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete(): uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapIMProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    nop

    .line 202
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 203
    if-eqz p2, :cond_3

    .line 207
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_2

    .line 212
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_1

    .line 217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 219
    :try_start_0
    const-string v3, "Message"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    return p1

    .line 223
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

    .line 225
    nop

    .line 228
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    const/4 p1, 0x0

    return p1

    .line 228
    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    throw p1

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
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

    .line 186
    const-string p1, "InstantMessage"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 250
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_2

    .line 255
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_1

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert(): uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - getLastPathSegment() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    const-string v5, "BluetoothMapIMProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    const-string v4, "Message"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {p0, v1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->insertMessage(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert() ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
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

    .line 278
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    return-object p1

    .line 274
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

    .line 275
    const/4 p1, 0x0

    .line 278
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    return-object p1

    .line 278
    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account ID missing in URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table missing in URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract insertMessage(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
.end method

.method protected onAccountChanged(Ljava/lang/String;)V
    .locals 3

    .line 100
    nop

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v0, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
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

    const-string v1, "BluetoothMapIMProvider"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 115
    return-void
.end method

.method protected onContactChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 158
    nop

    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildConvoContactsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    if-nez p2, :cond_2

    .line 167
    invoke-static {v0, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildConvoContactsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildConvoContactsUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactChanged() accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contactId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " URI: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapIMProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 178
    return-void
.end method

.method protected onMessageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 126
    nop

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    invoke-static {v0}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    if-nez p2, :cond_2

    .line 135
    invoke-static {v0, p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
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

    const-string p2, "BluetoothMapIMProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 146
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    .line 317
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 319
    nop

    .line 321
    :try_start_0
    const-string v2, "BluetoothMapIMProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query(): uri ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, v0, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 359
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-wide/16 v3, 0x0

    .line 361
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryConvoContact(Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    return-object v0

    .line 364
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 334
    const-string v3, "org_sub_str"

    .line 335
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    nop

    .line 337
    const-string v3, "t_begin"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 339
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    .line 338
    :cond_2
    move-object v6, v4

    .line 341
    :goto_0
    nop

    .line 342
    const-string v3, "t_end"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    if-eqz v3, :cond_3

    .line 344
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 343
    :cond_3
    move-object v5, v4

    .line 346
    :goto_1
    nop

    .line 347
    const-string v3, "read"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    if-eqz v3, :cond_4

    .line 349
    const-string v8, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v8, v3

    goto :goto_2

    .line 348
    :cond_4
    move-object v8, v4

    .line 351
    :goto_2
    nop

    .line 352
    const-string v3, "thread_id"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_5

    .line 354
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    goto :goto_3

    .line 353
    :cond_5
    move-object v3, v4

    .line 356
    :goto_3
    move-object v1, p0

    move-object v4, v8

    move-object v8, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryConversation(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    return-object v0

    .line 329
    :cond_6
    :try_start_2
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 330
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    return-object v0

    .line 326
    :cond_7
    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    :try_start_3
    invoke-virtual {p0, p2, p3, v3, v4}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 368
    throw v0
.end method

.method protected abstract queryAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryConversation(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryConvoContact(Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract queryMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected abstract setBluetoothStatus(Z)I
.end method

.method protected abstract setOwnerStatus(ILjava/lang/String;JILjava/lang/String;)I
.end method

.method public shutdown()V
    .locals 0

    .line 695
    return-void
.end method

.method protected abstract syncFolder(JJ)I
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 497
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    .line 498
    if-eqz p4, :cond_a

    .line 501
    if-nez p3, :cond_9

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update(): uri="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - getLastPathSegment() = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 508
    const-string v2, "BluetoothMapIMProvider"

    invoke-static {v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :try_start_0
    const-string p3, "Account"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Account ID missing in update values!"

    const-string v4, "_id"

    if-eqz p3, :cond_2

    .line 513
    :try_start_1
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 514
    if-eqz p1, :cond_1

    .line 517
    const-string p3, "flag_expose"

    .line 518
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 519
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->updateAccount(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    return p1

    .line 520
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expose flag missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 523
    :cond_2
    const-string p3, "Folder"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    .line 524
    nop

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    return v5

    .line 525
    :cond_3
    :try_start_3
    const-string p3, "Message"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 526
    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 527
    if-eqz p1, :cond_5

    .line 530
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    .line 531
    if-eqz p3, :cond_4

    .line 534
    const-string p4, "folder_id"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p4

    .line 535
    const-string v2, "flag_read"

    .line 536
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    .line 537
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/bluetooth/mapapi/BluetoothMapIMProvider;->updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    return p1

    .line 532
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message ID missing in update values!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 528
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 538
    :cond_6
    const-string p1, "Conversation"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_7

    .line 539
    nop

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    return v5

    .line 540
    :cond_7
    :try_start_5
    const-string p1, "ConvoContact"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_8

    .line 541
    nop

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    return v5

    .line 544
    :cond_8
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown table name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 546
    nop

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    return v5

    .line 549
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw p1

    .line 502
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selection shall not be used, ContentValues shall contain the data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table missing in URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract updateAccount(Ljava/lang/String;Ljava/lang/Integer;)I
.end method

.method protected abstract updateMessage(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)I
.end method
