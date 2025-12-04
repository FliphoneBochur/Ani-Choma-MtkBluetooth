.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;,
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$ContentType;
    }
.end annotation


# static fields
.field private static final CALLLOG_NUM_LIMIT:I = 0x32

.field private static final CCH:Ljava/lang/String; = "cch"

.field private static final CCH_PATH:Ljava/lang/String; = "/telecom/cch"

.field private static final D:Z = true

.field private static final FAV:Ljava/lang/String; = "fav"

.field private static final FAV_PATH:Ljava/lang/String; = "/telecom/fav"

.field private static final ICH:Ljava/lang/String; = "ich"

.field private static final ICH_PATH:Ljava/lang/String; = "/telecom/ich"

.field public static final INVALID_VALUE_PARAMETER:J = -0x1L

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field private static final LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

.field private static final MCH:Ljava/lang/String; = "mch"

.field private static final MCH_PATH:Ljava/lang/String; = "/telecom/mch"

.field private static final NEED_SEND_BODY:I = -0x1

.field private static final OCH:Ljava/lang/String; = "och"

.field private static final OCH_PATH:Ljava/lang/String; = "/telecom/och"

.field public static final ORDER_BY_ALPHABETICAL:I = 0x1

.field public static final ORDER_BY_INDEXED:I = 0x0

.field private static final PB:Ljava/lang/String; = "pb"

.field private static final PBAP_TARGET:[B

.field private static final PB_PATH:Ljava/lang/String; = "/telecom/pb"

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexServer"

.field private static final TELECOM_PATH:Ljava/lang/String; = "/telecom"

.field private static final TYPE_LISTING:Ljava/lang/String; = "x-bt/vcard-listing"

.field private static final TYPE_PB:Ljava/lang/String; = "x-bt/phonebook"

.field private static final TYPE_VCARD:Ljava/lang/String; = "x-bt/vcard"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z

.field private static final VCARD_NAME_SUFFIX_LENGTH:I = 0x5

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mConnAppParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mDatabaseIdentifierBitMask:J

.field private mDatabaseIdentifierHigh:J

.field private mDatabaseIdentifierLow:J

.field private mFolderVersionCounterbitMask:J

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

.field private mVcardSelector:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 68
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    .line 78
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 98
    const-string v1, "/telecom"

    const-string v2, "/telecom/pb"

    const-string v3, "/telecom/fav"

    const-string v4, "/telecom/ich"

    const-string v5, "/telecom/och"

    const-string v6, "/telecom/mch"

    const-string v7, "/telecom/cch"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 108
    const-string v1, "/telecom"

    const-string v2, "/telecom/pb"

    const-string v3, "/telecom/fav"

    const-string v4, "/telecom/ich"

    const-string v5, "/telecom/och"

    const-string v6, "/telecom/mch"

    const-string v7, "/telecom/cch"

    const-string v8, "/SIM1"

    const-string v9, "/SIM1/telecom"

    const-string v10, "/SIM1/telecom/ich"

    const-string v11, "/SIM1/telecom/och"

    const-string v12, "/SIM1/telecom/mch"

    const-string v13, "/SIM1/telecom/cch"

    const-string v14, "/SIM1/telecom/pb"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/pbap/PbapStateMachine;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    .line 183
    const-string v1, ""

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 191
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierLow:J

    .line 203
    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierHigh:J

    .line 205
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mFolderVersionCounterbitMask:J

    .line 207
    const-wide/16 v0, 0x4

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierBitMask:J

    .line 230
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 231
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 232
    new-instance p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 233
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 234
    return-void
.end method

.method private checkPbapFeatureSupport(J)Z
    .locals 2

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPbapFeatureSupport featureBitMask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mConnAppParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->supportedFeature:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z
    .locals 4

    .line 1357
    nop

    .line 1359
    const/4 v0, 0x0

    const-string v1, "BluetoothPbapObexServer"

    if-eqz p0, :cond_0

    .line 1360
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    move-exception p0

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputStream close failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    move p0, v0

    goto :goto_1

    .line 1365
    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 1367
    :goto_1
    if-eqz p1, :cond_1

    .line 1368
    :try_start_1
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1370
    :catch_1
    move-exception p0

    .line 1371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operation close failed"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    goto :goto_3

    .line 1373
    :cond_1
    :goto_2
    move v0, p0

    .line 1374
    :goto_3
    return v0
.end method

.method private createList(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;IILjava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 17

    .line 826
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 828
    nop

    .line 829
    iget-boolean v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    if-eqz v4, :cond_0

    .line 830
    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    iget-boolean v7, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    iget-object v10, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    iget-object v11, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSelectedPhonebookNameList(IZII[BLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 834
    :cond_0
    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 838
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    if-lt v5, v6, :cond_1

    iget v5, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_1

    .line 839
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 840
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 841
    nop

    .line 844
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "search by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", requestSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " searchValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BluetoothPbapObexServer"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v7, "number"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, ","

    if-eqz v3, :cond_9

    .line 849
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 850
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 852
    iget-object v12, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v13, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 853
    invoke-virtual {v12, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 854
    iget v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 855
    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 856
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 857
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compareValue="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_6

    .line 859
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 860
    sget-boolean v16, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v16, :cond_3

    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p5, v12

    const-string v12, "currentValue="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 860
    :cond_3
    move-object/from16 p5, v12

    .line 863
    :goto_4
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 864
    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 865
    const/16 v7, 0x2c

    invoke-virtual {v15, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/4 v7, 0x0

    invoke-virtual {v15, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 867
    :cond_4
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, p5

    goto :goto_3

    .line 855
    :cond_6
    move-object/from16 p5, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 873
    :cond_7
    iget v1, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    const/4 v10, 0x0

    .line 874
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    if-ge v10, v5, :cond_8

    .line 875
    add-int/lit8 v10, v10, 0x1

    .line 876
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 879
    :cond_8
    goto/16 :goto_a

    .line 880
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 881
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 882
    iget-object v8, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 883
    iget-object v8, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 882
    :cond_a
    const-string v8, ""

    .line 886
    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_e

    .line 887
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 889
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 890
    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 889
    :cond_b
    const/16 v12, 0x2c

    const/4 v14, 0x0

    .line 893
    :goto_8
    iget-object v13, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    if-eqz v13, :cond_d

    .line 894
    iget-object v13, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 895
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 896
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 897
    :cond_c
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 903
    :cond_e
    const/4 v14, 0x0

    iget v1, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move v10, v14

    .line 904
    :goto_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    if-ge v10, v5, :cond_f

    .line 905
    add-int/lit8 v10, v10, 0x1

    .line 906
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 909
    :cond_f
    :goto_a
    return v10
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 2

    .line 1384
    nop

    .line 1385
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1395
    :cond_0
    nop

    .line 1396
    const-string p0, "type=3"

    goto :goto_0

    .line 1392
    :cond_1
    nop

    .line 1393
    const-string p0, "type=2"

    goto :goto_0

    .line 1387
    :cond_2
    nop

    .line 1390
    const-string p0, "(type=1 OR type=5)"

    .line 1400
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v0, :cond_3

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call log selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_3
    return-object p0
.end method

.method private getDatabaseIdentifier()[B
    .locals 4

    .line 1496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierHigh:J

    .line 1497
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierLow:J

    .line 1498
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierHigh:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1500
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1501
    iget-wide v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierHigh:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1502
    iget-wide v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierLow:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1503
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 1505
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPBPrimaryFolderVersion()[B
    .locals 4

    .line 1510
    nop

    .line 1511
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1512
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primaryVersionCounter is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothPbapObexServer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1516
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private getPBSecondaryFolderVersion()[B
    .locals 4

    .line 1520
    nop

    .line 1521
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1522
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondaryVersionCounter is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothPbapObexServer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1526
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 22

    .line 971
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x1

    new-array v7, v6, [B

    .line 972
    new-instance v8, Ljavax/obex/ApplicationParameter;

    invoke-direct {v8}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 973
    nop

    .line 974
    const-string v9, "mch"

    invoke-direct {v0, v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    const-string v9, "ich"

    invoke-direct {v0, v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "och"

    invoke-direct {v0, v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 975
    const-string v9, "cch"

    invoke-direct {v0, v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v10

    goto :goto_1

    .line 976
    :cond_1
    :goto_0
    iget-wide v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mFolderVersionCounterbitMask:J

    .line 977
    invoke-direct {v0, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->checkPbapFeatureSupport(J)Z

    move-result v9

    .line 979
    :goto_1
    nop

    .line 980
    const-string v11, "pb"

    invoke-direct {v0, v5, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "fav"

    invoke-direct {v0, v5, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v10

    goto :goto_3

    .line 981
    :cond_3
    :goto_2
    iget-wide v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mFolderVersionCounterbitMask:J

    .line 982
    invoke-direct {v0, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->checkPbapFeatureSupport(J)Z

    move-result v5

    .line 987
    :goto_3
    iget-boolean v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    const-string v13, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    const-string v15, "BluetoothPbapObexServer"

    if-eqz v11, :cond_a

    .line 989
    const-string v11, "Need Phonebook size in response header."

    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iput-boolean v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 993
    const/4 v11, 0x2

    new-array v14, v11, [B

    .line 995
    div-int/lit16 v12, v2, 0x100

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v14, v10

    .line 996
    rem-int/lit16 v12, v2, 0x100

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v14, v6

    .line 997
    const/16 v12, 0x8

    invoke-virtual {v8, v12, v11, v14}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1000
    iget-boolean v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v11, :cond_6

    .line 1001
    iput-boolean v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 1002
    nop

    .line 1004
    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1006
    sget-object v17, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-string v19, "type = 3 AND new = 1"

    const-string v21, "date DESC"

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1011
    if-eqz v11, :cond_4

    .line 1012
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1013
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1011
    :cond_4
    move v12, v10

    .line 1016
    :goto_4
    if-lez v12, :cond_5

    goto :goto_5

    :cond_5
    move v12, v10

    .line 1017
    :goto_5
    int-to-byte v11, v12

    aput-byte v11, v7, v10

    .line 1018
    const/16 v10, 0x9

    invoke-virtual {v8, v10, v6, v7}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1021
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_6
    iget-wide v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierBitMask:J

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->checkPbapFeatureSupport(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1027
    invoke-direct {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->setDbCounters(Ljavax/obex/ApplicationParameter;)V

    .line 1029
    :cond_7
    if-eqz v5, :cond_8

    .line 1030
    invoke-direct {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->setFolderVersionCounters(Ljavax/obex/ApplicationParameter;)V

    .line 1032
    :cond_8
    if-eqz v9, :cond_9

    .line 1033
    invoke-direct {v0, v8, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->setCallversionCounters(Ljavax/obex/ApplicationParameter;Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)V

    .line 1035
    :cond_9
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v1

    const/16 v5, 0x4c

    invoke-virtual {v3, v5, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send back Phonebook size only, without body info! Size= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-direct {v0, v4, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I

    move-result v0

    return v0

    .line 1047
    :cond_a
    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    const/16 v11, 0xd0

    if-eqz v2, :cond_d

    .line 1049
    const-string v2, "Need new missed call num in response header."

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iput-boolean v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 1052
    nop

    .line 1054
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1056
    sget-object v17, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-string v19, "type = 3 AND new = 1"

    const-string v21, "date DESC"

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1061
    if-eqz v2, :cond_b

    .line 1062
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 1061
    :cond_b
    move v12, v10

    .line 1066
    :goto_6
    if-lez v12, :cond_c

    goto :goto_7

    :cond_c
    move v12, v10

    .line 1067
    :goto_7
    int-to-byte v2, v12

    aput-byte v2, v7, v10

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/16 v2, 0x9

    invoke-virtual {v8, v2, v6, v7}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1075
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v2

    const/16 v6, 0x4c

    invoke-virtual {v3, v6, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :try_start_0
    invoke-interface {v4, v3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    goto :goto_8

    .line 1085
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1086
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return v11

    .line 1091
    :cond_d
    :goto_8
    iget-wide v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mDatabaseIdentifierBitMask:J

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->checkPbapFeatureSupport(J)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1092
    invoke-direct {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->setDbCounters(Ljavax/obex/ApplicationParameter;)V

    .line 1093
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v2

    const/16 v6, 0x4c

    invoke-virtual {v3, v6, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1095
    :try_start_1
    invoke-interface {v4, v3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1099
    goto :goto_9

    .line 1096
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1097
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return v11

    .line 1102
    :cond_e
    :goto_9
    if-eqz v5, :cond_f

    .line 1103
    invoke-direct {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->setFolderVersionCounters(Ljavax/obex/ApplicationParameter;)V

    .line 1104
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v2

    const/16 v5, 0x4c

    invoke-virtual {v3, v5, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1106
    :try_start_2
    invoke-interface {v4, v3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1110
    goto :goto_a

    .line 1107
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1108
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return v11

    .line 1113
    :cond_f
    :goto_a
    if-eqz v9, :cond_10

    .line 1114
    invoke-direct {v0, v8, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->setCallversionCounters(Ljavax/obex/ApplicationParameter;Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)V

    .line 1115
    invoke-virtual {v8}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v3, v1, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1117
    :try_start_3
    invoke-interface {v4, v3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1121
    goto :goto_b

    .line 1118
    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1119
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return v11

    .line 1124
    :cond_10
    :goto_b
    const/4 v0, -0x1

    return v0
.end method

.method private isLegalPath(Ljava/lang/String;)Z
    .locals 5

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 580
    return v1

    .line 582
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 583
    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    return v1

    .line 582
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 587
    :cond_2
    return v0
.end method

.method private isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 557
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 558
    return v0

    .line 560
    :cond_0
    nop

    .line 561
    const-string v1, ".vcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    nop

    .line 563
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 568
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 569
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 570
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    const/4 p1, 0x1

    return p1

    .line 569
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    :cond_3
    return v0
.end method

.method public static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 3

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dumping HeaderSet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapObexServer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUNT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc0

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAME : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LENGTH : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc3

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIME_ISO_8601 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x44

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIME_4_BYTE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc4

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DESCRIPTION : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TARGET : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x47

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHO : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBJECT_CLASS : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4f

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLICATION_PARAMETER : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4c

    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    goto :goto_0

    .line 1465
    :catch_0
    move-exception p0

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump HeaderSet error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :goto_0
    return-void
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1445
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1446
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1447
    return-void
.end method

.method private parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 8

    .line 649
    nop

    .line 650
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 651
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_d

    if-eqz v3, :cond_d

    .line 652
    aget-byte v4, p1, v2

    const/16 v5, 0xc

    const/16 v6, 0x8

    if-eq v4, v5, :cond_a

    const/16 v5, 0xe

    if-eq v4, v5, :cond_9

    const/16 v5, 0x10

    if-eq v4, v5, :cond_6

    packed-switch v4, :pswitch_data_0

    .line 748
    nop

    .line 749
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Parse Application Parameter error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move v3, v0

    goto :goto_0

    .line 723
    :pswitch_0
    add-int/lit8 v2, v2, 0x2

    .line 724
    aget-byte v4, p1, v2

    if-eqz v4, :cond_0

    .line 725
    iput-boolean v0, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 727
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 728
    goto :goto_0

    .line 654
    :pswitch_1
    add-int/lit8 v2, v2, 0x2

    .line 655
    move v4, v0

    .line 656
    :goto_1
    if-ge v4, v6, :cond_2

    .line 658
    add-int v5, v2, v4

    aget-byte v7, p1, v5

    if-eqz v7, :cond_1

    .line 659
    iput-boolean v0, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    .line 660
    iget-object v7, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    aget-byte v5, p1, v5

    aput-byte v5, v7, v4

    .line 657
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 663
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 664
    goto :goto_0

    .line 716
    :pswitch_2
    add-int/lit8 v2, v2, 0x2

    .line 717
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    .line 718
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 719
    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 720
    add-int/lit8 v2, v2, 0x2

    .line 721
    goto :goto_0

    .line 705
    :pswitch_3
    add-int/lit8 v2, v2, 0x2

    .line 706
    aget-byte v4, p1, v2

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    if-nez v4, :cond_3

    .line 707
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    goto :goto_2

    .line 709
    :cond_3
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    .line 710
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 711
    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    .line 713
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 714
    goto :goto_0

    .line 700
    :pswitch_4
    add-int/lit8 v2, v2, 0x2

    .line 701
    aget-byte v4, p1, v2

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 702
    add-int/2addr v2, v1

    .line 703
    goto/16 :goto_0

    .line 684
    :pswitch_5
    add-int/lit8 v2, v2, 0x1

    .line 686
    aget-byte v4, p1, v2

    .line 687
    if-nez v4, :cond_4

    .line 688
    nop

    .line 689
    move v3, v0

    goto/16 :goto_0

    .line 691
    :cond_4
    add-int v5, v2, v4

    aget-byte v6, p1, v5

    if-nez v6, :cond_5

    .line 692
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v6, p1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_3

    .line 694
    :cond_5
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v6, p1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 696
    :goto_3
    nop

    .line 697
    add-int/lit8 v2, v5, 0x1

    .line 698
    goto/16 :goto_0

    .line 679
    :pswitch_6
    add-int/lit8 v2, v2, 0x2

    .line 680
    aget-byte v4, p1, v2

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 681
    add-int/2addr v2, v1

    .line 682
    goto/16 :goto_0

    .line 666
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 667
    move v4, v0

    .line 668
    :goto_4
    const/4 v5, 0x4

    if-ge v4, v5, :cond_8

    .line 670
    add-int v5, v2, v4

    aget-byte v6, p1, v5

    if-eqz v6, :cond_7

    .line 671
    iget-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->supportedFeature:[B

    aget-byte v5, p1, v5

    aput-byte v5, v6, v4

    .line 669
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 675
    :cond_8
    add-int/lit8 v2, v2, 0x4

    .line 676
    goto/16 :goto_0

    .line 743
    :cond_9
    add-int/lit8 v2, v2, 0x2

    .line 744
    aget-byte v4, p1, v2

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    .line 745
    add-int/2addr v2, v1

    .line 746
    goto/16 :goto_0

    .line 731
    :cond_a
    add-int/lit8 v2, v2, 0x2

    .line 732
    move v4, v0

    .line 733
    :goto_5
    if-ge v4, v6, :cond_c

    .line 735
    add-int v5, v2, v4

    aget-byte v7, p1, v5

    if-eqz v7, :cond_b

    .line 736
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    .line 737
    iget-object v7, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    aget-byte v5, p1, v5

    aput-byte v5, v7, v4

    .line 734
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 740
    :cond_c
    add-int/lit8 v2, v2, 0x8

    .line 741
    goto/16 :goto_0

    .line 755
    :cond_d
    invoke-virtual {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->dump()V

    .line 758
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 25

    .line 1260
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v5, p5

    const/4 v8, 0x0

    const-string v9, "BluetoothPbapObexServer"

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    .line 1261
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1262
    const-string v1, "vcf"

    .line 1263
    if-ltz v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 1264
    add-int/2addr v0, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v0, v1, v8, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    const-string v0, "name is not .vcf"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/16 v0, 0xc6

    return v0

    .line 1271
    :cond_0
    iget-object v0, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v1, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v15

    .line 1272
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v0

    .line 1273
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1274
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 1275
    return v0

    .line 1278
    :cond_1
    const/16 v1, 0xa0

    if-nez v15, :cond_2

    .line 1280
    const-string v0, "PhonebookSize is 0, return."

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return v1

    .line 1286
    :cond_2
    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    if-lt v15, v2, :cond_3

    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_0

    :cond_3
    move v2, v15

    .line 1297
    :goto_0
    iget v3, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/16 v4, 0x32

    const/4 v5, 0x6

    if-eq v3, v10, :cond_4

    iget v3, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-eq v3, v5, :cond_4

    .line 1299
    if-le v2, v4, :cond_4

    .line 1300
    move v2, v4

    .line 1304
    :cond_4
    nop

    .line 1305
    nop

    .line 1306
    iget v3, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-ne v3, v10, :cond_5

    .line 1307
    nop

    .line 1308
    add-int/lit8 v3, v15, -0x1

    move v4, v8

    goto :goto_1

    .line 1306
    :cond_5
    move v4, v10

    move v3, v15

    .line 1311
    :goto_1
    iget v11, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    add-int/2addr v4, v11

    .line 1312
    add-int v11, v4, v2

    sub-int/2addr v11, v10

    .line 1313
    iget v12, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    if-ltz v12, :cond_e

    if-le v4, v3, :cond_6

    goto/16 :goto_6

    .line 1317
    :cond_6
    if-le v11, v3, :cond_7

    .line 1318
    goto :goto_2

    .line 1317
    :cond_7
    move v3, v11

    .line 1321
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pullPhonebook(): requestSize="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " startPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-boolean v1, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 1326
    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-ne v2, v5, :cond_8

    move/from16 v24, v10

    goto :goto_3

    :cond_8
    move/from16 v24, v8

    .line 1328
    :goto_3
    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-eq v2, v10, :cond_a

    if-eqz v24, :cond_9

    move v9, v15

    goto :goto_4

    .line 1348
    :cond_9
    iget-object v11, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v12, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    iget-boolean v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    iget-object v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    iget-object v8, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    iget-object v7, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    move-object/from16 v13, p4

    move v14, v4

    move v9, v15

    move v15, v3

    move/from16 v16, v1

    move/from16 v17, v0

    move/from16 v18, v9

    move/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move/from16 v23, v6

    invoke-virtual/range {v11 .. v23}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSelectedCallLogVcards(ILjavax/obex/Operation;IIZIIZ[B[BLjava/lang/String;Z)I

    move-result v0

    return v0

    .line 1328
    :cond_a
    move v9, v15

    .line 1330
    :goto_4
    if-nez v4, :cond_d

    .line 1331
    iget-object v2, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 1332
    iget-boolean v4, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    iget-object v4, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    .line 1331
    :goto_5
    invoke-virtual {v2, v1, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v2

    .line 1333
    if-nez v3, :cond_c

    .line 1334
    move-object/from16 v5, p4

    invoke-direct {v6, v5, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1336
    :cond_c
    move-object/from16 v5, p4

    iget-object v11, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v13, 0x1

    iget-boolean v4, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    iget-object v8, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    iget-object v10, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    iget-object v7, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    move-object/from16 v12, p4

    move v14, v3

    move v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v0

    move/from16 v18, v9

    move/from16 v19, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v7

    move/from16 v23, v6

    invoke-virtual/range {v11 .. v24}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;IIZ[B[BLjava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1342
    :cond_d
    move-object/from16 v5, p4

    iget-object v11, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/16 v16, 0x0

    iget-boolean v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    iget-object v8, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    iget-object v10, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    iget-object v7, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    move-object/from16 v12, p4

    move v13, v4

    move v14, v3

    move v15, v1

    move/from16 v17, v0

    move/from16 v18, v9

    move/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v7

    move/from16 v23, v6

    invoke-virtual/range {v11 .. v24}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;IIZ[B[BLjava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1314
    :cond_e
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listStartOffset is not correct! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return v1
.end method

.method private pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)I
    .locals 24

    .line 1196
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    const/16 v9, 0xc6

    const-string v10, "BluetoothPbapObexServer"

    if-eqz v8, :cond_d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto/16 :goto_5

    .line 1202
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v11, 0x1

    add-int/2addr v1, v11

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1203
    nop

    .line 1204
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1206
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    move v15, v2

    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch number format exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return v9

    .line 1204
    :cond_1
    move v15, v2

    .line 1213
    :goto_0
    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 1214
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v14

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v17

    .line 1215
    const/16 v1, 0xc4

    if-nez v14, :cond_2

    .line 1217
    const-string v0, "PhonebookSize is 0, return."

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return v1

    .line 1222
    :cond_2
    iget-boolean v4, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 1223
    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-nez v2, :cond_3

    .line 1224
    const-string v0, "wrong path!"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return v9

    .line 1226
    :cond_3
    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const-string v3, "The requested vcard is not acceptable! name= "

    if-eq v2, v11, :cond_8

    iget v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    move v6, v14

    goto :goto_2

    .line 1241
    :cond_4
    if-lez v15, :cond_7

    if-le v15, v14, :cond_5

    goto :goto_1

    .line 1247
    :cond_5
    if-lt v15, v11, :cond_6

    .line 1248
    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v12, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    iget-boolean v1, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    iget-object v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    iget-object v3, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelector:[B

    iget-object v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vCardSelectorOperator:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardSelector:Z

    move-object/from16 v13, p3

    move v6, v14

    move v14, v15

    move/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move/from16 v23, v0

    invoke-virtual/range {v11 .. v23}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSelectedCallLogVcards(ILjavax/obex/Operation;IIZIIZ[B[BLjava/lang/String;Z)I

    move-result v0

    return v0

    .line 1254
    :cond_6
    const/16 v0, 0xa0

    return v0

    .line 1242
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v1

    .line 1226
    :cond_8
    move v6, v14

    .line 1228
    :goto_2
    if-ltz v15, :cond_c

    if-lt v15, v6, :cond_9

    goto :goto_4

    .line 1231
    :cond_9
    if-nez v15, :cond_b

    iget v1, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-ne v1, v11, :cond_b

    .line 1233
    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 1234
    iget-boolean v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    iget-object v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    .line 1233
    :goto_3
    invoke-virtual {v1, v4, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;

    move-result-object v1

    .line 1235
    move-object/from16 v2, p3

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1231
    :cond_b
    move-object/from16 v2, p3

    .line 1237
    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    iget-boolean v0, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->ignorefilter:Z

    iget-object v8, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->propertySelector:[B

    move-object/from16 v2, p3

    move v3, v15

    move v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I

    move-result v0

    return v0

    .line 1229
    :cond_c
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return v1

    .line 1198
    :cond_d
    :goto_5
    const-string v0, "Name is Null, or the length of name < 5 !"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return v9
.end method

.method private pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 15

    .line 1129
    move-object v6, p0

    move-object/from16 v7, p2

    iget-object v0, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1131
    const/16 v8, 0xd1

    const/16 v9, 0xcc

    const-string v10, "2"

    const-string v11, "1"

    const-string v12, "0"

    const-string v13, "BluetoothPbapObexServer"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1138
    const-string v1, "search attr not supported"

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    const-string v0, "do not support search by sound"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v8

    .line 1144
    :cond_1
    return v9

    .line 1146
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchAttr is valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1133
    :cond_3
    :goto_0
    iput-object v12, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 1135
    const-string v0, "searchAttr is not set by PCE, assume search by name by default"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :goto_1
    iget-object v0, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v1, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 1150
    move-object v0, p0

    move-object/from16 v1, p2

    move v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v0

    .line 1151
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1152
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 1153
    return v0

    .line 1156
    :cond_4
    if-nez v14, :cond_5

    .line 1158
    const-string v0, "PhonebookSize is 0, return."

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/16 v0, 0xa0

    return v0

    .line 1163
    :cond_5
    iget-object v1, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1166
    nop

    .line 1168
    const-string v1, "Order parameter is not set by PCE. Assume order by \'Indexed\' by default"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v12

    goto :goto_2

    .line 1171
    :cond_6
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Order parameter is not supported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1177
    const-string v0, "Do not support order by sound"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return v8

    .line 1180
    :cond_7
    return v9

    .line 1182
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Order parameter is valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_2
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1186
    const/4 v1, 0x0

    iput v1, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto :goto_3

    .line 1187
    :cond_9
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1188
    const/4 v1, 0x1

    iput v1, v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 1191
    :cond_a
    :goto_3
    move-object/from16 v1, p4

    invoke-direct {p0, v7, v1, v0, v14}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;II)I

    move-result v0

    return v0
.end method

.method private pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 5

    .line 944
    const/16 v0, 0xa0

    const-string v1, "BluetoothPbapObexServer"

    if-nez p2, :cond_0

    .line 945
    const-string p1, "vcardString is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return v0

    .line 949
    :cond_0
    const/4 v2, 0x0

    .line 950
    nop

    .line 952
    const/16 v3, 0xd0

    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 953
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    .line 954
    sget-boolean p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz p2, :cond_1

    .line 955
    const-string p2, "Send Data complete!"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_1
    goto :goto_0

    .line 957
    :catch_0
    move-exception p2

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open/write outputstrem failed"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    move v0, v3

    .line 962
    :goto_0
    invoke-static {v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 963
    goto :goto_1

    .line 962
    :cond_2
    move v3, v0

    .line 966
    :goto_1
    return v3
.end method

.method private pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I
    .locals 3

    .line 917
    nop

    .line 920
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "Push Header"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    nop

    .line 928
    const/16 v1, 0xd0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, p2}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 929
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 930
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-static {v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 936
    :goto_0
    goto :goto_1

    .line 935
    :cond_0
    const/16 v1, 0xa0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 931
    :catch_0
    move-exception p2

    .line 932
    :try_start_1
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    nop

    .line 935
    invoke-static {v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 936
    goto :goto_0

    .line 939
    :cond_1
    :goto_1
    return v1

    .line 935
    :goto_2
    invoke-static {v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 938
    :cond_2
    throw p2
.end method

.method private sendVcardListingXml(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;II)I
    .locals 9

    .line 764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    nop

    .line 766
    const-string v0, "<?xml version=\"1.0\"?>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v0, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v0, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    iget v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const-string v7, "BluetoothPbapObexServer"

    const/16 v1, 0xcc

    const-string v2, "number"

    const-string v3, "name"

    const-string v4, "1"

    const-string v5, "0"

    const/4 v8, 0x1

    if-eq v0, v8, :cond_6

    iget v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v8, 0x6

    if-ne v0, v8, :cond_0

    goto/16 :goto_3

    .line 787
    :cond_0
    nop

    .line 788
    iget-object p3, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 789
    move-object v2, v3

    goto :goto_0

    .line 790
    :cond_1
    iget-object p3, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 791
    nop

    .line 796
    :goto_0
    iget-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget p4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    iget-object v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    invoke-virtual {p3, p4, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(ILjava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p3

    .line 799
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    iget v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    if-lt p4, v0, :cond_2

    iget p4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_1

    .line 800
    :cond_2
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    .line 801
    :goto_1
    iget v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 802
    add-int v1, v0, p4

    .line 803
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 804
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 807
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call log list, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " offset="

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    nop

    :goto_2
    if-ge v0, v1, :cond_4

    .line 812
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p1, p4, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    .line 793
    :cond_5
    return v1

    .line 773
    :cond_6
    :goto_3
    nop

    .line 774
    iget-object v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 775
    move-object v5, v3

    goto :goto_4

    .line 776
    :cond_7
    iget-object v0, p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    move-object v5, v2

    goto :goto_4

    .line 776
    :cond_8
    const-string v0, ""

    move-object v5, v0

    .line 779
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 780
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;IILjava/lang/StringBuilder;Ljava/lang/String;)I

    move-result p1

    .line 784
    nop

    .line 815
    :goto_5
    const-string p3, "</vCard-listing>"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "itemsFound ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 782
    :cond_9
    return v1
.end method

.method private setCallversionCounters(Ljavax/obex/ApplicationParameter;Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)V
    .locals 3

    .line 1486
    iget-object v0, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->callHistoryVersionCounter:[B

    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2, v0}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1490
    iget-object p2, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->callHistoryVersionCounter:[B

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2, p2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1493
    return-void
.end method

.method private setDbCounters(Ljavax/obex/ApplicationParameter;)V
    .locals 3

    .line 1471
    nop

    .line 1473
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->getDatabaseIdentifier()[B

    move-result-object v0

    .line 1471
    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2, v0}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1474
    return-void
.end method

.method private setFolderVersionCounters(Ljavax/obex/ApplicationParameter;)V
    .locals 3

    .line 1477
    nop

    .line 1479
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->getPBPrimaryFolderVersion()[B

    move-result-object v0

    .line 1477
    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2, v0}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1480
    nop

    .line 1482
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->getPBSecondaryFolderVersion()[B

    move-result-object v0

    .line 1480
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v2, v0}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 1483
    return-void
.end method

.method private writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1436
    const-string v0, "<card handle=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1438
    const-string p1, ".vcf\" name=\""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1440
    const-string p1, "\"/>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    return-void
.end method

.method private xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1410
    if-nez p1, :cond_0

    .line 1411
    return-void

    .line 1414
    :cond_0
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v0}, Ljava/text/StringCharacterIterator;->current()C

    move-result p1

    .line 1416
    :goto_0
    const v1, 0xffff

    if-eq p1, v1, :cond_6

    .line 1417
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_1

    .line 1418
    const-string p1, "&lt;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1419
    :cond_1
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_2

    .line 1420
    const-string p1, "&gt;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1421
    :cond_2
    const/16 v1, 0x22

    if-ne p1, v1, :cond_3

    .line 1422
    const-string p1, "&quot;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1423
    :cond_3
    const/16 v1, 0x27

    if-ne p1, v1, :cond_4

    .line 1424
    const-string p1, "&#039;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1425
    :cond_4
    const/16 v1, 0x26

    if-ne p1, v1, :cond_5

    .line 1426
    const-string p1, "&amp;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1429
    :cond_5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1431
    :goto_1
    invoke-virtual {v0}, Ljava/text/StringCharacterIterator;->next()C

    move-result p1

    goto :goto_0

    .line 1433
    :cond_6
    return-void
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 314
    const-string p1, "BluetoothPbapObexServer"

    const-string p2, "onAbort(): enter."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 317
    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 318
    const/16 p1, 0xa0

    return p1
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0

    .line 1381
    return-void
.end method

.method public onClose()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mStateMachine:Lcom/android/bluetooth/pbap/PbapStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 393
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 9

    .line 238
    const-string v0, "BluetoothPbapObexServer"

    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v1, :cond_0

    .line 239
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 243
    const/16 v1, 0x46

    const/16 v2, 0xd0

    :try_start_0
    invoke-virtual {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 244
    const/16 v4, 0xc6

    if-nez v3, :cond_1

    .line 245
    return v4

    .line 248
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConnect(): uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    array-length v5, v3

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2

    .line 252
    const-string p1, "Wrong UUID length"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v4

    .line 255
    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    .line 256
    aget-byte v7, v3, v5

    sget-object v8, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v8, v8, v5

    if-eq v7, v8, :cond_3

    .line 257
    const-string p1, "Wrong UUID"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v4

    .line 255
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 261
    :cond_4
    const/16 v4, 0x4a

    invoke-virtual {p2, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    nop

    .line 268
    :try_start_1
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 269
    if-eqz v3, :cond_5

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnect(): remote="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p2, v1, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :cond_5
    nop

    .line 281
    nop

    .line 282
    :try_start_2
    new-instance p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mConnAppParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    .line 283
    const/16 p2, 0x4c

    invoke-virtual {p1, p2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 284
    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mConnAppParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_6

    .line 285
    const/16 p1, 0xc0

    return p1

    .line 290
    :cond_6
    nop

    .line 292
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz p1, :cond_7

    .line 293
    const-string p1, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_7
    const/16 p1, 0xa0

    return p1

    .line 287
    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v2

    .line 275
    :catch_1
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 262
    :catch_2
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v2
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 333
    const-string p1, "BluetoothPbapObexServer"

    const-string p2, "onDelete(): not support PUT request."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 336
    const/16 p1, 0xc0

    return p1
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2

    .line 302
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onDisconnect(): enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 308
    const/16 p1, 0xa0

    iput p1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 309
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 17

    .line 397
    move-object/from16 v0, p0

    const-string v1, "BluetoothPbapObexServer"

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 398
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 399
    nop

    .line 400
    new-instance v5, Ljavax/obex/HeaderSet;

    invoke-direct {v5}, Ljavax/obex/HeaderSet;-><init>()V

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    invoke-direct {v3, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 406
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v4

    .line 407
    const/16 v6, 0x42

    invoke-virtual {v4, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 408
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 409
    const/16 v9, 0x4c

    invoke-virtual {v4, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    nop

    .line 417
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz v10, :cond_0

    .line 418
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 421
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnGet type is "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; name is "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v4, 0xc6

    if-nez v6, :cond_1

    .line 425
    return v4

    .line 428
    :cond_1
    iget-object v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v10

    if-nez v10, :cond_2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage locked, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v0, 0xd3

    return v0

    .line 441
    :cond_2
    nop

    .line 442
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 443
    move v10, v2

    goto :goto_0

    .line 442
    :cond_3
    move v10, v7

    .line 446
    :goto_0
    const-string v12, "x-bt/vcard-listing"

    const/4 v13, 0x6

    const-string v14, "x-bt/vcard"

    const/4 v11, 0x2

    if-eqz v10, :cond_c

    if-eqz v10, :cond_4

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    goto/16 :goto_1

    .line 480
    :cond_4
    const-string v10, "SIM1"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10, v2, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 481
    const-string v0, "Not support access SIM card info!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v4

    .line 488
    :cond_5
    const-string v2, "pb"

    invoke-direct {v0, v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 489
    iput v7, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 491
    const-string v2, "download phonebook request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 493
    :cond_6
    const-string v2, "fav"

    invoke-direct {v0, v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 494
    iput v13, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 496
    const-string v2, "download favorites request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 498
    :cond_7
    const-string v2, "ich"

    invoke-direct {v0, v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 499
    iput v11, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 500
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 501
    invoke-virtual {v2, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistoryPrimaryFolderVersion(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->callHistoryVersionCounter:[B

    .line 504
    const-string v2, "download incoming calls request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 506
    :cond_8
    const-string v2, "och"

    invoke-direct {v0, v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 507
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 508
    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 509
    invoke-virtual {v7, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistoryPrimaryFolderVersion(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->callHistoryVersionCounter:[B

    .line 512
    const-string v2, "download outgoing calls request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 514
    :cond_9
    const-string v2, "mch"

    invoke-direct {v0, v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 515
    const/4 v2, 0x4

    iput v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 516
    iget-object v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 517
    invoke-virtual {v10, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistoryPrimaryFolderVersion(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->callHistoryVersionCounter:[B

    .line 519
    iput-boolean v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 521
    const-string v2, "download missed calls request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 523
    :cond_a
    const-string v2, "cch"

    invoke-direct {v0, v8, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isNameMatchTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 524
    const/4 v2, 0x5

    iput v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 525
    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 526
    invoke-virtual {v7, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistoryPrimaryFolderVersion(I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->callHistoryVersionCounter:[B

    .line 529
    const-string v2, "download combined calls request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 532
    :cond_b
    const-string v0, "Input name doesn\'t contain valid info!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v0, 0xc4

    return v0

    .line 448
    :cond_c
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Guess what carkit actually want from current path ("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v15, "/telecom/pb"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 453
    iput v7, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_2

    .line 454
    :cond_d
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v15, "/telecom/fav"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 455
    iput v13, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_2

    .line 456
    :cond_e
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v13, "/telecom/ich"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 457
    iput v11, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_2

    .line 458
    :cond_f
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v11, "/telecom/och"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 459
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_2

    .line 460
    :cond_10
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v11, "/telecom/mch"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 461
    const/4 v2, 0x4

    iput v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 462
    iput-boolean v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto :goto_2

    .line 463
    :cond_11
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v7, "/telecom/cch"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 464
    const/4 v2, 0x5

    iput v2, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_2

    .line 465
    :cond_12
    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v7, "/telecom"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 467
    if-nez v10, :cond_13

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 468
    const-string v0, "invalid vcard listing request in default folder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v0, 0xc4

    return v0

    .line 476
    :cond_13
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGet(): appParamValue.needTag="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_3
    if-eqz v9, :cond_14

    invoke-direct {v0, v9, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 538
    const/16 v0, 0xc0

    return v0

    .line 542
    :cond_14
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 543
    move-object/from16 v1, p0

    move-object v2, v9

    move-object v4, v5

    move-object/from16 v5, p1

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 544
    :cond_15
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 546
    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v4, p1

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 547
    :cond_16
    const-string v2, "x-bt/phonebook"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 549
    move-object/from16 v1, p0

    move-object v2, v9

    move-object v4, v5

    move-object/from16 v5, p1

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 551
    :cond_17
    const-string v0, "unknown type request!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v4

    .line 472
    :cond_18
    const-string v0, "mCurrentpath is not valid path!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v4

    .line 410
    :catch_0
    move-exception v0

    .line 411
    const-string v0, "request headers error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v0, 0xd0

    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 1

    .line 324
    const-string p1, "BluetoothPbapObexServer"

    const-string v0, "onPut(): not support PUT request."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 327
    const/16 p1, 0xc0

    return p1
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 3

    .line 342
    sget-boolean p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz p2, :cond_0

    .line 343
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 346
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "before setPath, mCurrentPath ==  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothPbapObexServer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->notifyUpdateWakeLock()V

    .line 349
    iget-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 350
    nop

    .line 352
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    nop

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " create="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v1, "/"

    if-eqz p3, :cond_1

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 363
    const/4 p1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 366
    :cond_1
    if-nez p1, :cond_2

    .line 367
    const-string p2, ""

    goto :goto_0

    .line 369
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 373
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 374
    if-eqz p4, :cond_4

    .line 375
    const-string p1, "path create is forbidden!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/16 p1, 0xc3

    return p1

    .line 378
    :cond_4
    const-string p1, "path is not legal"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 p1, 0xc4

    return p1

    .line 382
    :cond_5
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 383
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->V:Z

    if-eqz p1, :cond_6

    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "after setPath, mCurrentPath ==  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_6
    const/16 p1, 0xa0

    return p1

    .line 353
    :catch_0
    move-exception p1

    .line 354
    const-string p1, "Get name header fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/16 p1, 0xd0

    return p1
.end method
