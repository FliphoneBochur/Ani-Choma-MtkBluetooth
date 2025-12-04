.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    }
.end annotation


# static fields
.field private static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field private static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field private static final INVALID_VALUE:I = -0x1

.field private static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final SMS_TYPE_CDMA:I = 0x2

.field public static final SMS_TYPE_GSM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSmsPdu"

.field private static final V:Z = false

.field private static sConcatenatedRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 509
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B)[I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getTableFromByteArray([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static decodePdu([BI)Ljava/lang/String;
    .locals 1

    .line 608
    nop

    .line 609
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 611
    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->createFromNativeSmsSubmitPdu([BZ)Landroid/telephony/SmsMessage;

    move-result-object p0

    .line 612
    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 612
    :cond_0
    const-string p0, ""

    .line 615
    :goto_0
    goto :goto_1

    .line 618
    :cond_1
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->gsmParseSubmitPdu([B)Ljava/lang/String;

    move-result-object p0

    .line 620
    :goto_1
    return-object p0
.end method

.method public static getDeliverPdus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation

    .line 581
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 590
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    .line 591
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 592
    invoke-virtual {v0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaChangeToDeliverPdu(J)V

    goto :goto_1

    .line 594
    :cond_0
    invoke-virtual {v0, p3, p4, p2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmChangeToDeliverPdu(JLjava/lang/String;)V

    .line 596
    :goto_1
    goto :goto_0

    .line 598
    :cond_1
    return-object p0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .line 512
    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    .line 513
    return v0
.end method

.method public static getSubmitPdus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation

    .line 522
    move-object/from16 v0, p1

    const-class v1, Landroid/telephony/TelephonyManager;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 523
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 525
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v3

    .line 529
    aget v13, v3, v2

    .line 533
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v14, v4, 0xff

    .line 534
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 535
    invoke-virtual {v4, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 536
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    const/4 v4, 0x2

    const/4 v12, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v12

    .line 541
    :goto_0
    const/4 v5, 0x3

    aget v11, v3, v5

    .line 542
    const/4 v5, 0x4

    aget v10, v3, v5

    .line 543
    const/4 v5, 0x5

    aget v3, v3, v5

    .line 544
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 545
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v5

    goto :goto_2

    .line 546
    :cond_2
    :goto_1
    const-string v5, "12"

    move-object v9, v5

    .line 550
    :goto_2
    if-ne v13, v12, :cond_3

    .line 551
    const/4 v3, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v9, v0, v2}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 553
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-direct {v2, v0, v11, v1, v10}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BIII)V

    .line 554
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 558
    :cond_3
    move v4, v2

    :goto_3
    if-ge v4, v13, :cond_5

    .line 559
    if-ne v1, v12, :cond_4

    move v5, v12

    goto :goto_4

    :cond_4
    move v5, v2

    .line 560
    :goto_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v16, v4, 0x1

    .line 559
    move v4, v5

    move-object v5, v9

    move v7, v11

    move v8, v10

    move-object/from16 v17, v9

    move v9, v3

    move v2, v10

    move v10, v14

    move-object/from16 p1, v0

    move v0, v11

    move/from16 v11, v16

    move/from16 v18, v12

    move v12, v13

    invoke-static/range {v4 .. v12}, Landroid/telephony/SmsMessage;->getSubmitPduEncodedMessage(ZLjava/lang/String;Ljava/lang/String;IIIIII)[B

    move-result-object v4

    .line 562
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BIII)V

    .line 563
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    move v11, v0

    move v10, v2

    move/from16 v4, v16

    move-object/from16 v9, v17

    move/from16 v12, v18

    const/4 v2, 0x0

    move-object/from16 v0, p1

    goto :goto_3

    .line 567
    :cond_5
    :goto_5
    return-object v15
.end method

.method private static getTableFromByteArray([B)[I
    .locals 4

    .line 762
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 765
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 766
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    .line 767
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 768
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 769
    const/16 v3, 0x24

    if-eq v1, v3, :cond_1

    const/16 v3, 0x25

    if-eq v1, v3, :cond_0

    .line 777
    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    goto :goto_1

    .line 774
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    aput v2, p0, v1

    .line 775
    goto :goto_1

    .line 771
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    aput v2, p0, v1

    .line 772
    nop

    .line 779
    :goto_1
    goto :goto_0

    .line 780
    :cond_2
    return-object p0
.end method

.method private static gsmParseSubmitPdu([B)Ljava/lang/String;
    .locals 10

    .line 649
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->gsmStripOffScAddress([B)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BI)V

    .line 650
    nop

    .line 651
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcs()I

    move-result p0

    .line 652
    nop

    .line 653
    nop

    .line 656
    and-int/lit16 v2, p0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "BluetoothMapSmsPdu"

    if-nez v2, :cond_5

    .line 658
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 660
    :goto_0
    if-eqz v2, :cond_1

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 664
    :cond_1
    shr-int/lit8 v2, p0, 0x2

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_3

    goto :goto_1

    .line 670
    :cond_2
    nop

    .line 671
    move v3, v5

    goto :goto_1

    .line 675
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move v3, v6

    goto :goto_1

    .line 666
    :cond_4
    nop

    .line 667
    move v3, v1

    .line 678
    :goto_1
    goto :goto_4

    .line 681
    :cond_5
    and-int/lit16 v2, p0, 0xf0

    const/16 v8, 0xf0

    if-ne v2, v8, :cond_7

    .line 682
    nop

    .line 684
    and-int/2addr p0, v4

    if-nez p0, :cond_6

    .line 686
    move v3, v1

    goto :goto_4

    .line 689
    :cond_6
    move v3, v6

    goto :goto_4

    .line 691
    :cond_7
    const/16 v8, 0xe0

    const/16 v9, 0xc0

    if-eq v2, v9, :cond_b

    const/16 v9, 0xd0

    if-eq v2, v9, :cond_b

    if-ne v2, v8, :cond_8

    goto :goto_2

    .line 708
    :cond_8
    and-int/lit16 v2, p0, 0xc0

    const/16 v8, 0x80

    if-ne v2, v8, :cond_a

    .line 711
    const/16 v2, 0x84

    if-ne p0, v2, :cond_9

    .line 713
    move v3, v4

    goto :goto_4

    .line 715
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 718
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 699
    :cond_b
    :goto_2
    if-ne v2, v8, :cond_c

    .line 700
    move v3, v5

    goto :goto_3

    .line 702
    :cond_c
    move v3, v1

    .line 705
    :goto_3
    nop

    .line 721
    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->setEncoding(I)V

    .line 722
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmDecodeUserDataHeader()V

    .line 725
    const/4 p0, 0x0

    if-eqz v3, :cond_10

    if-eq v3, v1, :cond_f

    if-eq v3, v6, :cond_10

    if-eq v3, v5, :cond_e

    if-eq v3, v4, :cond_d

    goto/16 :goto_5

    .line 748
    :cond_d
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v3

    .line 749
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgSize()I

    move-result v0

    const-string v4, "KSC5601"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded as KSC5601: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    goto/16 :goto_5

    .line 742
    :cond_e
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v3

    .line 743
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgSize()I

    move-result v0

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded as 16BIT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object p0, v1

    goto :goto_5

    .line 733
    :cond_f
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v1

    .line 734
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getMsgSeptetCount()I

    move-result v3

    .line 735
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataSeptetPadding()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getLanguageTable()I

    move-result v5

    .line 736
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getLanguageShiftTable()I

    move-result v6

    .line 733
    invoke-static/range {v1 .. v6}, Lcom/android/bluetooth/util/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded as 7BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object p0, v0

    goto :goto_5

    .line 753
    :catch_0
    move-exception v0

    goto :goto_6

    .line 728
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown encoding type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    nop

    .line 730
    nop

    .line 756
    :goto_5
    nop

    .line 758
    return-object p0

    .line 754
    :goto_6
    const-string v1, "Unsupported encoding type???"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    return-object p0
.end method

.method private static gsmStripOffScAddress([B)[B
    .locals 4

    .line 629
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 631
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 635
    array-length v2, p0

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, v1

    .line 636
    new-array v3, v2, [B

    .line 637
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    return-object v3

    .line 632
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of address exeeds the length of the PDU data."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
