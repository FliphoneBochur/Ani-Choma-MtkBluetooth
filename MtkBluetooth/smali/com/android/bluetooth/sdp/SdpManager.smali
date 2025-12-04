.class public Lcom/android/bluetooth/sdp/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;,
        Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final MAP_L2CAP_PSM:I = 0x1029

.field public static final MAP_RFCOMM_CHANNEL:I = 0x1a

.field private static final MESSAGE_SDP_INTENT:I = 0x2

.field public static final MNS_L2CAP_PSM:I = 0x1027

.field public static final MNS_RFCOMM_CHANNEL:I = 0x16

.field public static final NEXT_L2CAP_CHANNEL:I = 0x2

.field public static final NEXT_RFCOMM_CHANNEL:I = 0x1

.field public static final OPP_L2CAP_PSM:I = 0x1023

.field public static final OPP_RFCOMM_CHANNEL:I = 0xc

.field public static final PBAP_L2CAP_PSM:I = 0x1025

.field public static final PBAP_REPO_FAVORITES:B = 0x8t

.field public static final PBAP_REPO_LOCAL:B = 0x1t

.field public static final PBAP_REPO_SIM:B = 0x2t

.field public static final PBAP_REPO_SPEED_DAIL:B = 0x4t

.field public static final PBAP_RFCOMM_CHANNEL:I = 0x13

.field public static final SAP_RFCOMM_CHANNEL:I = 0x10

.field public static SDP_CHANNEL:I = 0x0

.field private static final SDP_INTENT_DELAY:I = 0x2af8

.field private static final TAG:Ljava/lang/String; = "SdpManager"

.field static final TRACKER_LOCK:Ljava/lang/Object;

.field private static final V:Z = false

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sNativeAvailable:Z

.field private static sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

.field static sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

.field static sSearchInProgress:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x2

    sput v0, Lcom/android/bluetooth/sdp/SdpManager;->SDP_CHANNEL:I

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sSearchInProgress:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 88
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->classInitNative()V

    .line 89
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager$1;-><init>(Lcom/android/bluetooth/sdp/SdpManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;-><init>(Lcom/android/bluetooth/sdp/SdpManager;)V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    .line 227
    sput-object p1, Lcom/android/bluetooth/sdp/SdpManager;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 228
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->initializeNative()V

    .line 229
    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/bluetooth/sdp/SdpManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/sdp/SdpManager;Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method public static getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;
    .locals 1

    .line 239
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-object v0
.end method

.method public static init(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;
    .locals 1

    .line 234
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 235
    return-object v0
.end method

.method private native initializeNative()V
.end method

.method private native sdpCreateMapMasRecordNative(Ljava/lang/String;IIIIII)I
.end method

.method private native sdpCreateMapMnsRecordNative(Ljava/lang/String;IIII)I
.end method

.method private native sdpCreateOppOpsRecordNative(Ljava/lang/String;III[B)I
.end method

.method private native sdpCreatePbapPceRecordNative(Ljava/lang/String;I)I
.end method

.method private native sdpCreatePbapPseRecordNative(Ljava/lang/String;IIIII)I
.end method

.method private native sdpCreateSapsRecordNative(Ljava/lang/String;II)I
.end method

.method private native sdpRemoveSdpRecordNative(I)Z
.end method

.method private native sdpSearchNative([B[B)Z
.end method

.method private sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    .locals 3

    .line 461
    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->stopSearch()V

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getStatus()I

    move-result v1

    const-string v2, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    if-eqz p2, :cond_0

    .line 468
    const-string v1, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 470
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object p2

    const-string v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 475
    sget-object p2, Lcom/android/bluetooth/sdp/SdpManager;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p2, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 477
    if-nez p3, :cond_1

    .line 479
    sget-object p2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->remove(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z

    .line 480
    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/bluetooth/sdp/SdpManager;->sSearchInProgress:Z

    .line 481
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->startSearch()V

    .line 483
    :cond_1
    return-void
.end method

.method private startSearch()V
    .locals 4

    .line 438
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getNext()Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    .line 440
    const-string v1, "SdpManager"

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/bluetooth/sdp/SdpManager;->sSearchInProgress:Z

    if-nez v2, :cond_0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting search for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->sSearchInProgress:Z

    .line 446
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->startSearch()V

    .line 448
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    .line 449
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v0

    .line 448
    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sdpSearchNative([B[B)Z

    goto :goto_0

    .line 452
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSearch(): nextInst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mSearchInProgress = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sSearchInProgress:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " - search busy or queue empty."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 243
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->clear()V

    .line 246
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 249
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->cleanupNative()V

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    .line 253
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 254
    return-void
.end method

.method public createMapMasRecord(Ljava/lang/String;IIIIII)I
    .locals 1

    .line 525
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 528
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateMapMasRecordNative(Ljava/lang/String;IIIIII)I

    move-result p1

    return p1

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createMapMnsRecord(Ljava/lang/String;IIII)I
    .locals 1

    .line 554
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateMapMnsRecordNative(Ljava/lang/String;IIII)I

    move-result p1

    return p1

    .line 555
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOppOpsRecord(Ljava/lang/String;III[B)I
    .locals 1

    .line 634
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateOppOpsRecordNative(Ljava/lang/String;III[B)I

    move-result p1

    return p1

    .line 635
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPbapPceRecord(Ljava/lang/String;I)I
    .locals 1

    .line 574
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreatePbapPceRecordNative(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 575
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createPbapPseRecord(Ljava/lang/String;IIIII)I
    .locals 1

    .line 605
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 608
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreatePbapPseRecordNative(Ljava/lang/String;IIIII)I

    move-result p1

    return p1

    .line 606
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSapsRecord(Ljava/lang/String;II)I
    .locals 1

    .line 657
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 660
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateSapsRecordNative(Ljava/lang/String;II)I

    move-result p1

    return p1

    .line 658
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeSdpRecord(I)Z
    .locals 1

    .line 672
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 675
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sdp/SdpManager;->sdpRemoveSdpRecordNative(I)Z

    move-result p1

    return p1

    .line 673
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method sdpMasRecordFoundCallback(I[B[BIIIIIILjava/lang/String;Z)V
    .locals 13

    .line 261
    move v0, p1

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, p2, v4}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v2

    .line 263
    const/4 v3, 0x0

    .line 264
    if-nez v2, :cond_0

    .line 265
    const-string v0, "SdpManager"

    const-string v2, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v1

    return-void

    .line 268
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 269
    if-nez v0, :cond_1

    .line 270
    new-instance v3, Landroid/bluetooth/SdpMasRecord;

    move-object v5, v3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v5 .. v12}, Landroid/bluetooth/SdpMasRecord;-><init>(IIIIIILjava/lang/String;)V

    .line 274
    :cond_1
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID in parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object v0, p0

    move/from16 v4, p11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sdpMnsRecordFoundCallback(I[B[BIIIILjava/lang/String;Z)V
    .locals 11

    .line 286
    move v0, p1

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v2

    .line 289
    const/4 v3, 0x0

    .line 290
    if-nez v2, :cond_0

    .line 291
    const-string v0, "SdpManager"

    const-string v2, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v1

    return-void

    .line 294
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 295
    if-nez v0, :cond_1

    .line 296
    new-instance v3, Landroid/bluetooth/SdpMnsRecord;

    move-object v5, v3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Landroid/bluetooth/SdpMnsRecord;-><init>(IIIILjava/lang/String;)V

    .line 300
    :cond_1
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID in parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object v0, p0

    move/from16 v4, p9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sdpOppOpsRecordFoundCallback(I[B[BIIILjava/lang/String;[BZ)V
    .locals 11

    .line 338
    move v0, p1

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v2

    .line 340
    const/4 v3, 0x0

    .line 342
    if-nez v2, :cond_0

    .line 343
    const-string v0, "SdpManager"

    const-string v2, "sdpOppOpsRecordFoundCallback: Search instance is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v1

    return-void

    .line 346
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 347
    if-nez v0, :cond_1

    .line 348
    new-instance v3, Landroid/bluetooth/SdpOppOpsRecord;

    move-object v5, v3

    move-object/from16 v6, p7

    move/from16 v7, p5

    move v8, p4

    move/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Landroid/bluetooth/SdpOppOpsRecord;-><init>(Ljava/lang/String;III[B)V

    .line 352
    :cond_1
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID in parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object v0, p0

    move/from16 v4, p9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 358
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sdpPseRecordFoundCallback(I[B[BIIIIILjava/lang/String;Z)V
    .locals 12

    .line 312
    move v0, p1

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v2

    .line 314
    const/4 v3, 0x0

    .line 315
    if-nez v2, :cond_0

    .line 316
    const-string v0, "SdpManager"

    const-string v2, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v1

    return-void

    .line 319
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 320
    if-nez v0, :cond_1

    .line 321
    new-instance v3, Landroid/bluetooth/SdpPseRecord;

    move-object v5, v3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v5 .. v11}, Landroid/bluetooth/SdpPseRecord;-><init>(IIIIILjava/lang/String;)V

    .line 325
    :cond_1
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "SdpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UUID in parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object v0, p0

    move/from16 v4, p10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sdpRecordFoundCallback(I[B[BI[B)V
    .locals 3

    .line 388
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object p2

    .line 391
    const/4 v1, 0x0

    .line 392
    if-nez p2, :cond_0

    .line 393
    const-string p1, "SdpManager"

    const-string p2, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    monitor-exit v0

    return-void

    .line 396
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 397
    if-nez p1, :cond_1

    .line 399
    const-string p1, "SdpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdpRecordFoundCallback: found a sdp record of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string p1, "SdpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Landroid/bluetooth/SdpRecord;

    invoke-direct {v1, p4, p5}, Landroid/bluetooth/SdpRecord;-><init>(I[B)V

    .line 407
    :cond_1
    const-string p1, "SdpManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "UUID: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string p1, "SdpManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "UUID in parcel: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object p3

    const/4 p5, 0x0

    aget-object p3, p3, p5

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, p2, v1, p5}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 413
    monitor-exit v0

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method sdpSapsRecordFoundCallback(I[B[BIILjava/lang/String;Z)V
    .locals 2

    .line 364
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object p2

    .line 366
    const/4 v1, 0x0

    .line 367
    if-nez p2, :cond_0

    .line 368
    const-string p1, "SdpManager"

    const-string p2, "sdpSapsRecordFoundCallback: Search instance is NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    monitor-exit v0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    .line 372
    if-nez p1, :cond_1

    .line 373
    new-instance v1, Landroid/bluetooth/SdpSapsRecord;

    invoke-direct {v1, p4, p5, p6}, Landroid/bluetooth/SdpSapsRecord;-><init>(IILjava/lang/String;)V

    .line 376
    :cond_1
    const-string p1, "SdpManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "UUID: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string p1, "SdpManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "UUID in parcel: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object p3

    const/4 p5, 0x0

    aget-object p3, p3, p5

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, p2, v1, p7}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 3

    .line 417
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    .line 418
    const-string p1, "SdpManager"

    const-string p2, "Native not initialized!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 421
    :cond_0
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->TRACKER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->isSearching(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    monitor-exit v0

    return-void

    .line 427
    :cond_1
    new-instance v1, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;-><init>(Lcom/android/bluetooth/sdp/SdpManager;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    .line 428
    sget-object p1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->add(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z

    .line 430
    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->startSearch()V

    .line 431
    monitor-exit v0

    .line 433
    return-void

    .line 431
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
