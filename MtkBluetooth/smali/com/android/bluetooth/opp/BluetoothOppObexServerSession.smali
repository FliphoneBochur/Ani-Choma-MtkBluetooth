.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BtOppObexServer"

.field private static final V:Z


# instance fields
.field private mAccepted:I

.field private mBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mNumFilesAttemptedToReceive:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/obex/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 93
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 111
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 113
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 114
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 115
    const-string p2, "BtOppObexServer"

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 117
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 5

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processShareInfo() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 566
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 567
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v2, :cond_0

    .line 568
    const-string v2, "Generate BluetoothOppReceiveFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I
    .locals 26

    .line 435
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "BtOppObexServer"

    .line 436
    nop

    .line 437
    nop

    .line 438
    nop

    .line 440
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    move-object v9, v0

    move v10, v7

    const/4 v0, 0x0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    const-string v0, "Error when openInputStream"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    nop

    .line 444
    move v0, v4

    move-object v9, v8

    const/16 v10, 0x1f0

    .line 447
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 449
    if-nez v0, :cond_0

    .line 450
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 451
    iget-object v13, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    const-string v14, "_data"

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v13, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v11, v12, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    :cond_0
    nop

    .line 457
    nop

    .line 459
    if-nez v0, :cond_1

    .line 461
    :try_start_1
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 465
    move-object v12, v4

    move v4, v0

    goto :goto_1

    .line 462
    :catch_1
    move-exception v0

    .line 463
    const-string v0, "Error when openOutputStream"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object v12, v8

    goto :goto_1

    .line 459
    :cond_1
    move v4, v0

    move-object v12, v8

    .line 468
    :goto_1
    const-wide/16 v14, 0x0

    if-nez v4, :cond_9

    .line 469
    invoke-interface/range {p2 .. p2}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v0

    .line 470
    new-array v0, v0, [B

    .line 472
    nop

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    move-wide/from16 v16, v18

    .line 476
    :goto_2
    :try_start_2
    iget-boolean v4, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    if-nez v4, :cond_7

    iget-wide v5, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    cmp-long v5, v14, v5

    if-eqz v5, :cond_7

    .line 478
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v5, :cond_2

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide/from16 v16, v5

    .line 482
    :cond_2
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 484
    if-ne v5, v7, :cond_3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive file reached stream end at position"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object v5, v12

    goto/16 :goto_5

    .line 491
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v12, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 492
    int-to-long v6, v5

    add-long/2addr v14, v6

    .line 493
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v14

    move-object/from16 v22, v9

    iget-wide v8, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    div-long/2addr v6, v8

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 496
    sget-boolean v23, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v23, :cond_4

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Receive file position = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " readLength "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v12

    sub-long v12, v8, v16

    :try_start_3
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 496
    :cond_4
    move-object v5, v12

    .line 504
    :goto_3
    cmp-long v4, v6, v18

    if-gtz v4, :cond_6

    sub-long v12, v8, v20

    const-wide/16 v24, 0x2710

    cmp-long v4, v12, v24

    if-lez v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v12, v5

    move-object/from16 v9, v22

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 506
    :cond_6
    :goto_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 507
    const-string v12, "current_bytes"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v4, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 509
    nop

    .line 510
    nop

    .line 511
    move-object v12, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-object v8, v13

    move-object/from16 v9, v22

    const/4 v7, -0x1

    goto/16 :goto_2

    .line 513
    :catch_2
    move-exception v0

    goto :goto_6

    .line 476
    :cond_7
    move-object v5, v12

    .line 522
    :goto_5
    goto :goto_8

    .line 513
    :catch_3
    move-exception v0

    move-object v5, v12

    .line 514
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when receiving file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Abort Received"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 517
    const/16 v23, 0x1ea

    goto :goto_7

    .line 519
    :cond_8
    const/16 v23, 0x1f0

    .line 521
    :goto_7
    move/from16 v10, v23

    goto :goto_8

    .line 468
    :cond_9
    move-object v5, v12

    .line 525
    :goto_8
    iget-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    if-eqz v0, :cond_a

    .line 527
    const-string v0, "receiving file interrupted by user."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 v13, 0x1ea

    goto :goto_a

    .line 531
    :cond_a
    iget-wide v6, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    cmp-long v0, v14, v6

    if-nez v0, :cond_c

    .line 532
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v0, :cond_b

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiving file completed for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 536
    :cond_b
    const-string v0, "Receiving file completed"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_9
    const/16 v13, 0xc8

    goto :goto_a

    .line 541
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading file failed at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v2, -0x1

    if-ne v10, v2, :cond_d

    .line 544
    const/16 v13, 0x1eb

    goto :goto_a

    .line 543
    :cond_d
    move v13, v10

    .line 549
    :goto_a
    if-eqz v5, :cond_e

    .line 551
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 552
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 555
    goto :goto_b

    .line 553
    :catch_4
    move-exception v0

    .line 554
    const-string v0, "Error when closing stream after send"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_e
    :goto_b
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->cancelNotification(Landroid/content/Context;)V

    .line 558
    return v13
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :cond_0
    monitor-exit p0

    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addShare for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 187
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 188
    return-void
.end method

.method public forceInterupt()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->stop()V

    .line 179
    return-void
.end method

.method public onClose()V
    .locals 2

    .line 645
    const-string v0, "BtOppObexServer"

    const-string v1, "onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 648
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mBluetoothOppService:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->acceptNewConnections()V

    .line 649
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->cancelNotification(Landroid/content/Context;)V

    .line 651
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 652
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 653
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 654
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 657
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 3

    .line 580
    const-string p2, "BtOppObexServer"

    const-string v0, "onConnect"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-static {p1}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 585
    :cond_0
    nop

    .line 587
    const/16 v0, 0x46

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 588
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v1, :cond_1

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect(): uuid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1
    if-eqz v0, :cond_2

    .line 592
    const/16 p1, 0xc6

    return p1

    .line 595
    :cond_2
    const/16 v0, 0xc0

    invoke-virtual {p1, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    nop

    .line 601
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    instance-of v0, p2, Lcom/android/bluetooth/BluetoothObexTransport;

    if-eqz v0, :cond_3

    .line 602
    check-cast p2, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {p2}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 604
    :cond_3
    const-string p2, "FF:FF:FF:00:00:00"

    .line 606
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 607
    if-eqz v0, :cond_5

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    const-string v1, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    if-eqz p1, :cond_4

    .line 611
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 613
    :cond_4
    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    :goto_1
    const-string p1, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 619
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 620
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mNumFilesAttemptedToReceive:I

    .line 621
    const/16 p1, 0xa0

    return p1

    .line 596
    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 p1, 0xd0

    return p1
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 1

    .line 627
    const-string p1, "BtOppObexServer"

    const-string v0, "onDisconnect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mNumFilesAttemptedToReceive:I

    if-lez p1, :cond_0

    .line 631
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->OPP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 633
    :cond_0
    const/16 p1, 0xa0

    iput p1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 634
    return-void
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 13

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/16 v1, 0xc3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 198
    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    instance-of v3, v0, Lcom/android/bluetooth/BluetoothObexTransport;

    if-eqz v3, :cond_1

    .line 203
    check-cast v0, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothObexTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "FF:FF:FF:00:00:00"

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    .line 214
    const/16 v4, 0xc0

    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v5

    .line 215
    sget-boolean v6, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v6, :cond_2

    .line 216
    invoke-static {v5}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 218
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 219
    invoke-virtual {v5, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 220
    const/16 v9, 0x42

    invoke-virtual {v5, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    nop

    .line 226
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 228
    const-string p1, "BtOppObexServer"

    const-string v0, "length is 0, reject the transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 p1, 0xcb

    return p1

    .line 233
    :cond_3
    if-eqz v7, :cond_1f

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_b

    .line 242
    :cond_4
    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 243
    if-gez v9, :cond_5

    if-nez v5, :cond_5

    .line 245
    const-string p1, "BtOppObexServer"

    const-string v0, "There is no file extension or mime type, reject the transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v4

    .line 249
    :cond_5
    add-int/2addr v9, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 250
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    .line 251
    invoke-virtual {v10, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 252
    sget-boolean v11, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v11, :cond_6

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype guessed from extension "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "BtOppObexServer"

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_6
    const/16 v9, 0xcf

    if-eqz v10, :cond_7

    .line 256
    move-object v5, v10

    goto :goto_1

    .line 258
    :cond_7
    if-nez v5, :cond_8

    .line 260
    const-string p1, "BtOppObexServer"

    const-string v0, "Can\'t get mimetype, reject the transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v9

    .line 265
    :cond_8
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 269
    if-eqz v5, :cond_1e

    if-nez v3, :cond_9

    sget-object v10, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    goto/16 :goto_a

    .line 277
    :cond_9
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 278
    const-string v10, "hint"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v7, "total_bytes"

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    const-string v7, "mimetype"

    invoke-virtual {v9, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v5, "destination"

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "direction"

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    iget-wide v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "timestamp"

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    const/4 v5, 0x2

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    if-eq v0, v6, :cond_a

    if-ne v0, v5, :cond_b

    .line 288
    :cond_a
    nop

    .line 289
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 288
    const-string v7, "confirm"

    invoke-virtual {v9, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    :cond_b
    const/4 v0, 0x5

    if-eqz v3, :cond_c

    .line 293
    nop

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 293
    const-string v7, "confirm"

    invoke-virtual {v9, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    :cond_c
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v7, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v7, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 300
    sget-boolean v7, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v7, :cond_d

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert contentUri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BtOppObexServer"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLocalShareInfoId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BtOppObexServer"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_d
    monitor-enter p0

    .line 306
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 307
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    :cond_e
    :goto_2
    const/4 v3, 0x4

    :try_start_2
    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    if-eqz v7, :cond_f

    .line 311
    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 312
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    if-nez v7, :cond_e

    .line 313
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0xc350

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 317
    sget-boolean v7, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v7, :cond_e

    .line 318
    const-string v7, "BtOppObexServer"

    const-string v8, "MSG_CONNECT_TIMEOUT sent"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 326
    :cond_f
    goto :goto_3

    .line 322
    :catch_0
    move-exception v7

    .line 323
    :try_start_3
    sget-boolean v7, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v7, :cond_10

    .line 324
    const-string v7, "BtOppObexServer"

    const-string v8, "Interrupted in onPut blocking"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_10
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 329
    const-string v7, "BtOppObexServer"

    const-string v8, "Server unblocked "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    monitor-enter p0

    .line 332
    :try_start_4
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    if-eqz v7, :cond_11

    .line 333
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    :cond_11
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v8, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    if-eq v7, v8, :cond_12

    .line 344
    const-string v7, "BtOppObexServer"

    const-string v8, "Unexpected error!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_12
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    iput v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 348
    sget-boolean v7, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->V:Z

    if-eqz v7, :cond_13

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after confirm: userAccepted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BtOppObexServer"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_13
    nop

    .line 353
    const/16 v7, 0xa0

    .line 355
    iget v8, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    const/4 v9, 0x0

    if-eq v8, v6, :cond_18

    if-eq v8, v5, :cond_18

    if-ne v8, v0, :cond_14

    goto :goto_5

    .line 403
    :cond_14
    if-eq v8, v2, :cond_16

    if-ne v8, v3, :cond_15

    goto :goto_4

    :cond_15
    move v1, v7

    goto/16 :goto_9

    .line 413
    :cond_16
    :goto_4
    const-string p1, "BtOppObexServer"

    const-string v0, "Rejected incoming request"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    if-eqz p1, :cond_17

    .line 415
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 418
    :cond_17
    const/16 p1, 0x1ea

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v0, v3, p1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 420
    nop

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 423
    iput v2, v0, Landroid/os/Message;->what:I

    .line 424
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput p1, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 425
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 359
    :cond_18
    :goto_5
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mNumFilesAttemptedToReceive:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mNumFilesAttemptedToReceive:I

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    const/16 v1, 0xd0

    const/16 v2, 0xc8

    if-nez v0, :cond_19

    .line 362
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 364
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    iput v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 365
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v6, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 366
    move v7, v1

    goto :goto_6

    .line 361
    :cond_19
    move v0, v2

    .line 370
    :goto_6
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    if-eqz v3, :cond_1b

    .line 372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 374
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    const-string v8, "_data"

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "status"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "uri"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 380
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/obex/Operation;)I

    move-result v0

    .line 384
    if-eq v0, v2, :cond_1a

    .line 385
    goto :goto_7

    .line 384
    :cond_1a
    move v1, v7

    .line 387
    :goto_7
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {p1, v3, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_8

    .line 390
    :cond_1b
    move v1, v7

    :goto_8
    if-ne v0, v2, :cond_1c

    .line 391
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 394
    goto :goto_9

    .line 395
    :cond_1c
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz p1, :cond_1d

    .line 396
    nop

    .line 397
    invoke-static {p1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 398
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v0, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 428
    :cond_1d
    :goto_9
    return v1

    .line 335
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 327
    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 272
    :cond_1e
    :goto_a
    const-string p1, "BtOppObexServer"

    const-string v0, "mimeType is null or in unacceptable list, reject the transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v9

    .line 235
    :cond_1f
    :goto_b
    const-string p1, "BtOppObexServer"

    const-string v0, "name is null or empty, reject the transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v4

    .line 221
    :catch_1
    move-exception p1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPut: getReceivedHeaders error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtOppObexServer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v4
.end method

.method public preStart()V
    .locals 4

    .line 131
    const-string v0, "BtOppObexServer"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create ServerSession with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create server session error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 1

    .line 145
    const-string p2, "BtOppObexServer"

    const-string v0, "Start!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method public stop()V
    .locals 4

    .line 162
    const-string v0, "BtOppObexServer"

    const-string v1, "Stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 165
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 174
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/obex/ServerSession;

    .line 175
    return-void
.end method

.method public unblock()V
    .locals 1

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 122
    return-void
.end method
