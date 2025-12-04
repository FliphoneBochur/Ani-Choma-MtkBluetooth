.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
.super Ljava/lang/Object;
.source "AvrcpItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MEDIA_ATTRIBUTE_ALBUM_NAME:I = 0x3

.field private static final MEDIA_ATTRIBUTE_ARTIST_NAME:I = 0x2

.field private static final MEDIA_ATTRIBUTE_COVER_ART_HANDLE:I = 0x8

.field private static final MEDIA_ATTRIBUTE_GENRE:I = 0x6

.field private static final MEDIA_ATTRIBUTE_PLAYING_TIME:I = 0x7

.field private static final MEDIA_ATTRIBUTE_TITLE:I = 0x1

.field private static final MEDIA_ATTRIBUTE_TOTAL_TRACK_NUMBER:I = 0x5

.field private static final MEDIA_ATTRIBUTE_TRACK_NUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AvrcpItem.Builder"


# instance fields
.field private mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 279
    const-string v0, "AvrcpItem.Builder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    return-object v0
.end method

.method public fromAvrcpAttributeArray([I[Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 5

    .line 303
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 304
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 305
    sget-boolean v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AvrcpItem.Builder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 341
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$802(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 335
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$702(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 336
    :catch_0
    move-exception v2

    .line 339
    goto :goto_1

    .line 331
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$602(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    goto :goto_1

    .line 325
    :pswitch_3
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$502(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    goto :goto_1

    .line 326
    :catch_1
    move-exception v2

    .line 329
    goto :goto_1

    .line 318
    :pswitch_4
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$402(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 321
    goto :goto_1

    .line 319
    :catch_2
    move-exception v2

    .line 322
    goto :goto_1

    .line 314
    :pswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$302(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    goto :goto_1

    .line 311
    :pswitch_6
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$202(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    goto :goto_1

    .line 308
    :pswitch_7
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    aget-object v3, p2, v1

    invoke-static {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$102(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    nop

    .line 304
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 345
    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$302(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    return-object p0
.end method

.method public setArtistName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$202(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    return-object p0
.end method

.method public setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1302(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Z)Z

    .line 404
    return-object p0
.end method

.method public setCoverArtHandle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$802(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    return-object p0
.end method

.method public setCoverArtLocation(Landroid/net/Uri;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtLocation(Landroid/net/Uri;)V

    .line 536
    return-object p0
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1102(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 382
    return-object p0
.end method

.method public setDisplayableName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1602(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$602(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    return-object p0
.end method

.method public setItemType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$902(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;I)I

    .line 358
    return-object p0
.end method

.method public setPlayable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1202(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Z)Z

    .line 393
    return-object p0
.end method

.method public setPlayingTime(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$702(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J

    .line 514
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$102(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method public setTotalNumberOfTracks(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$502(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J

    .line 492
    return-object p0
.end method

.method public setTrackNumber(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$402(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J

    .line 481
    return-object p0
.end method

.method public setType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1002(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;I)I

    .line 371
    return-object p0
.end method

.method public setUid(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1402(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;J)J

    .line 415
    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->mAvrcpItem:Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->access$1502(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    return-object p0
.end method
