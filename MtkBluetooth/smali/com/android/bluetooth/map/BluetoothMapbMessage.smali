.class public abstract Lcom/android/bluetooth/map/BluetoothMapbMessage;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;
    }
.end annotation


# static fields
.field protected static final D:Z

.field public static final INVALID_VALUE:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "BluetoothMapbMessage"

.field protected static final V:Z


# instance fields
.field protected mAppParamCharset:I

.field private mBMsgLength:I

.field protected mCharset:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOriginator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;",
            ">;"
        }
    .end annotation
.end field

.field private mPartId:J

.field private mRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;

.field protected mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mVersionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    .line 37
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "VERSION:1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 49
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 52
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J

    .line 53
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    .line 59
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 489
    return-void
.end method

.method public static parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 506
    nop

    .line 507
    nop

    .line 508
    nop

    .line 509
    nop

    .line 510
    nop

    .line 511
    nop

    .line 518
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothMapbMessage"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 520
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 521
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bluetooth/log/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 523
    new-instance v0, Ljava/io/File;

    const-string v6, "receivedBMessage.txt"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 524
    nop

    .line 525
    nop

    .line 526
    nop

    .line 530
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 532
    const/16 v6, 0x1000

    :try_start_1
    new-array v6, v6, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    move v7, v3

    .line 534
    :goto_0
    :try_start_2
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_0

    .line 535
    invoke-virtual {v5, v6, v3, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    add-int/2addr v7, v8

    goto :goto_0

    .line 547
    :cond_0
    nop

    .line 549
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 550
    :catch_0
    move-exception v6

    goto :goto_6

    .line 540
    :catch_1
    move-exception v6

    goto :goto_2

    .line 547
    :catchall_0
    move-exception p0

    move-object v1, v5

    goto/16 :goto_b

    .line 540
    :catch_2
    move-exception v6

    goto :goto_1

    .line 538
    :catch_3
    move-exception v6

    goto :goto_5

    .line 547
    :catchall_1
    move-exception p0

    goto/16 :goto_b

    .line 540
    :catch_4
    move-exception v6

    move-object v5, v1

    :goto_1
    move v7, v3

    .line 541
    :goto_2
    :try_start_4
    const-string v8, "Failed to copy the received message"

    invoke-static {v2, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 542
    if-eqz v7, :cond_1

    .line 543
    move v6, v4

    goto :goto_3

    .line 542
    :cond_1
    move v6, v3

    .line 547
    :goto_3
    if-eqz v5, :cond_3

    .line 549
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 551
    :goto_4
    goto :goto_8

    .line 550
    :catch_5
    move-exception v7

    goto :goto_4

    .line 538
    :catch_6
    move-exception v6

    move-object v5, v1

    .line 539
    :goto_5
    :try_start_6
    const-string v7, "Unable to create output stream"

    invoke-static {v2, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 547
    if-eqz v5, :cond_2

    .line 549
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 551
    :goto_6
    goto :goto_7

    .line 550
    :catch_7
    move-exception v6

    goto :goto_6

    .line 556
    :cond_2
    :goto_7
    move v6, v3

    :cond_3
    :goto_8
    if-nez v6, :cond_5

    .line 560
    if-nez v5, :cond_4

    goto :goto_a

    .line 565
    :cond_4
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 568
    goto :goto_9

    .line 566
    :catch_8
    move-exception p0

    .line 571
    :goto_9
    :try_start_9
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    .line 576
    nop

    .line 578
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The incoming bMessage have been dumped to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 572
    :catch_9
    move-exception p0

    .line 573
    const-string p1, "Failed to open the bMessage file"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 557
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 547
    :goto_b
    if-eqz v1, :cond_6

    .line 549
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 551
    goto :goto_c

    .line 550
    :catch_a
    move-exception p1

    .line 553
    :cond_6
    :goto_c
    throw p0

    .line 581
    :cond_7
    :goto_d
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;-><init>(Ljava/io/InputStream;)V

    .line 582
    const-string v5, "BEGIN:BMSG"

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 583
    const-string v5, "VERSION"

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    move-object v7, v5

    move-object v5, v6

    .line 587
    :goto_e
    const-string v8, "BEGIN:VCARD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "BEGIN:BENV"

    if-nez v9, :cond_16

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 588
    const-string v8, "STATUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ":"

    const/4 v10, 0x2

    if-eqz v8, :cond_b

    .line 589
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 590
    if-eqz v8, :cond_a

    array-length v11, v8

    if-ne v11, v10, :cond_a

    .line 591
    aget-object v11, v8, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "READ"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 592
    goto :goto_f

    .line 593
    :cond_8
    aget-object v11, v8, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UNREAD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 594
    goto :goto_f

    .line 596
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong value in \'STATUS\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v8, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 599
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing value for \'STATUS\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 602
    :cond_b
    :goto_f
    const-string v8, "EXTENDEDDATA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 603
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 604
    if-eqz v8, :cond_c

    array-length v11, v8

    if-ne v11, v10, :cond_c

    .line 605
    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 607
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "We got extended data with: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_c
    const-string v8, "TYPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 611
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 612
    if-eqz v5, :cond_13

    array-length v8, v5

    if-ne v8, v10, :cond_13

    .line 613
    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    .line 616
    if-nez p1, :cond_e

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v5, v8, :cond_e

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v5, v8, :cond_d

    goto :goto_10

    .line 618
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Native appParamsCharset only supported for SMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 621
    :cond_e
    :goto_10
    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapbMessage$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v11

    aget v8, v8, v11

    if-eq v8, v4, :cond_12

    if-eq v8, v10, :cond_12

    const/4 v11, 0x3

    if-eq v8, v11, :cond_11

    const/4 v11, 0x4

    if-eq v8, v11, :cond_10

    const/4 v11, 0x5

    if-eq v8, v11, :cond_f

    goto :goto_11

    .line 633
    :cond_f
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 634
    goto :goto_11

    .line 630
    :cond_10
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;-><init>()V

    .line 631
    goto :goto_11

    .line 627
    :cond_11
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 628
    goto :goto_11

    .line 624
    :cond_12
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 625
    nop

    .line 638
    :goto_11
    goto :goto_12

    .line 639
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing value for \'TYPE\':"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 642
    :cond_14
    :goto_12
    const-string v8, "FOLDER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 643
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 644
    if-eqz v7, :cond_15

    array-length v8, v7

    if-ne v8, v10, :cond_15

    .line 645
    aget-object v6, v7, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 649
    :cond_15
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_e

    .line 651
    :cond_16
    if-eqz v1, :cond_1b

    .line 655
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 656
    iput p1, v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    .line 657
    if-eqz v6, :cond_17

    .line 658
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setCompleteFolder(Ljava/lang/String;)V

    .line 660
    :cond_17
    nop

    .line 665
    :goto_13
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 666
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz p1, :cond_18

    .line 667
    const-string p1, "Decoding vCard"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_18
    invoke-static {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;)V

    .line 670
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    .line 672
    :cond_19
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 673
    invoke-direct {v1, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 686
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 689
    goto :goto_14

    .line 687
    :catch_b
    move-exception p0

    .line 691
    :goto_14
    return-object v1

    .line 675
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bmessage has no BEGIN:BENV - line:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 652
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing bMessage TYPE: - unable to parse body-content"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V
    .locals 7

    .line 727
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgInit()V

    .line 729
    :goto_0
    const-string v1, "END:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 730
    const-string v1, "PARTID:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, ":"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 732
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ne v3, v2, :cond_0

    .line 734
    :try_start_0
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    nop

    .line 741
    goto/16 :goto_4

    .line 735
    :catch_0
    move-exception p1

    .line 736
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong value in \'PARTID\': "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing value for \'PARTID\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 741
    :cond_1
    const-string v1, "ENCODING:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 743
    if-eqz v1, :cond_2

    array-length v3, v1

    if-ne v3, v2, :cond_2

    .line 744
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 749
    goto/16 :goto_4

    .line 747
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing value for \'ENCODING\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 749
    :cond_3
    const-string v1, "CHARSET:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 750
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_4

    array-length v3, v1

    if-ne v3, v2, :cond_4

    .line 752
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    .line 757
    goto/16 :goto_4

    .line 755
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing value for \'CHARSET\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 757
    :cond_5
    const-string v1, "LANGUAGE:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "BluetoothMapbMessage"

    const-string v6, ""

    if-eqz v1, :cond_7

    .line 758
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_6

    array-length v1, v0

    if-ne v1, v2, :cond_6

    .line 760
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_1

    .line 765
    :cond_6
    const-string v0, "LANGUAGE value is missing."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    .line 768
    :goto_1
    goto/16 :goto_4

    :cond_7
    const-string v1, "LENGTH:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 769
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 770
    if-eqz v1, :cond_8

    array-length v3, v1

    if-ne v3, v2, :cond_8

    .line 772
    :try_start_1
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    goto/16 :goto_3

    .line 773
    :catch_1
    move-exception p1

    .line 774
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong value in \'LENGTH\': "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 777
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing value for \'LENGTH\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_9
    const-string v1, "BEGIN:MSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 780
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz v0, :cond_a

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bMsgLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_a
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 798
    nop

    .line 799
    move-object v0, v6

    .line 800
    :goto_2
    const-string v1, "END:MSG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 808
    :cond_b
    const-string v1, "([/]*)/END\\:MSG"

    const-string v2, "$1END:MSG"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 809
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 811
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgPart(Ljava/lang/String;)V

    goto :goto_4

    .line 784
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing value for \'LENGTH\'. Unable to read remaining part of the message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_d
    :goto_3
    nop

    .line 813
    :goto_4
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 815
    :cond_e
    return-void
.end method

.method private parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V
    .locals 4

    .line 696
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    .line 697
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    const-string v2, "BluetoothMapbMessage"

    if-eqz v1, :cond_0

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoding envelope level "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    :goto_0
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 702
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v0, :cond_1

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoding recipient vCard level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 711
    :cond_3
    const-string v1, "BEGIN:BENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 712
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v1, :cond_4

    .line 713
    const-string v1, "Decoding nested envelope"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_4
    add-int/2addr p2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 717
    :cond_5
    const-string p2, "BEGIN:BBODY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 718
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz p2, :cond_6

    .line 719
    const-string p2, "Decoding bbody"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V

    .line 723
    :cond_7
    return-void
.end method


# virtual methods
.method public addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    return-void
.end method

.method public addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 887
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method public addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    return-void
.end method

.method public addOriginator([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 896
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 936
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    return-void
.end method

.method public addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    return-void
.end method

.method public addRecipient([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 928
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    return-void
.end method

.method protected decodeBinary(Ljava/lang/String;)[B
    .locals 9

    .line 982
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 984
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    const-string v3, ":END"

    const-string v4, "BluetoothMapbMessage"

    if-eqz v2, :cond_0

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding binary data: START:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    const/4 v2, 0x0

    move v5, v2

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v0, :cond_1

    .line 988
    add-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 990
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 987
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    .line 992
    :cond_1
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz p1, :cond_3

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 994
    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_2

    .line 995
    new-array v6, v7, [Ljava/lang/Object;

    aget-byte v8, v1, v5

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    const-string v8, "%02X"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 997
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded binary data: START:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_3
    return-object v1
.end method

.method public abstract encode()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected encodeBinary([B[B)Ljava/lang/String;
    .locals 5

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 961
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    const/16 v4, 0x10

    if-ge v2, v3, :cond_0

    .line 962
    aget-byte v3, p2, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    aget-byte v3, p2, v2

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_0
    nop

    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 966
    aget-byte p2, p1, v1

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0xf

    invoke-static {p2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    aget-byte p2, p1, v1

    and-int/lit8 p2, p2, 0xf

    invoke-static {p2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 973
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeGeneric(Ljava/util/ArrayList;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1006
    const-string v1, "BEGIN:BMSG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v2, "STATUS:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const-string v2, "TYPE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "FOLDER:"

    const/16 v4, 0x200

    if-le v2, v4, :cond_0

    .line 1012
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 1013
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1019
    const-string v2, "EXTENDEDDATA:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1022
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    .line 1023
    invoke-virtual {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->encode(Ljava/lang/StringBuilder;)V

    .line 1024
    goto :goto_1

    .line 1030
    :cond_2
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    const-string v3, "BluetoothMapbMessage"

    if-eqz v2, :cond_4

    .line 1032
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    .line 1033
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz v5, :cond_3

    .line 1034
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encodeGeneric: recipient email"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_3
    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->encode(Ljava/lang/StringBuilder;)V

    .line 1037
    goto :goto_2

    .line 1039
    :cond_4
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1041
    const-string v2, "ENCODING:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1044
    const-string v2, "CHARSET:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :cond_6
    const/4 v2, 0x0

    .line 1050
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1051
    array-length v5, v5

    add-int/lit8 v5, v5, 0x16

    add-int/2addr v2, v5

    .line 1052
    goto :goto_3

    .line 1053
    :cond_7
    const-string v4, "LENGTH:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1058
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1059
    const-string v6, "END:BBODY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v6, "END:BENV"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v6, "END:BMSG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1067
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    array-length v6, v0

    array-length v7, v1

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1069
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1071
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1072
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1073
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1074
    const-string v0, "\r\nEND:MSG\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1075
    goto :goto_4

    .line 1076
    :cond_8
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1078
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    if-eqz p1, :cond_9

    .line 1079
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1082
    :catch_0
    move-exception p1

    .line 1083
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;",
            ">;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSingleRecipient()Ljava/lang/String;
    .locals 4

    .line 1091
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v0

    .line 1092
    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1097
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;

    .line 1099
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getEnvLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 1101
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 1102
    return-object v0

    .line 1104
    :cond_1
    goto :goto_0

    .line 1105
    :cond_2
    return-object v1

    .line 1093
    :cond_3
    :goto_1
    const-string v0, "BluetoothMapbMessage"

    const-string v2, "[getSingleRecipient] recipientList == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-object v1
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public abstract parseMsgInit()V
.end method

.method public abstract parseMsgPart(Ljava/lang/String;)V
.end method

.method public setCompleteFolder(Ljava/lang/String;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 852
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 2

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setRecipient(Lcom/android/bluetooth/map/BluetoothMapbMessage$VCard;)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 832
    if-eqz p1, :cond_0

    .line 833
    const-string p1, "READ"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    goto :goto_0

    .line 835
    :cond_0
    const-string p1, "UNREAD"

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    .line 837
    :goto_0
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 841
    return-void
.end method

.method public setVersionString(Ljava/lang/String;)V
    .locals 2

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VERSION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    .line 501
    return-void
.end method
