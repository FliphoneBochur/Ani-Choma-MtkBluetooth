.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "AvrcpControllerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;
    }
.end annotation


# static fields
.field public static final BROWSE_SCOPE_NOW_PLAYING:B = 0x3t

.field public static final BROWSE_SCOPE_PLAYER_LIST:B = 0x0t

.field public static final BROWSE_SCOPE_SEARCH:B = 0x2t

.field public static final BROWSE_SCOPE_VFS:B = 0x1t

.field static final DBG:Z

.field public static final FOLDER_NAVIGATION_DIRECTION_DOWN:B = 0x1t

.field public static final FOLDER_NAVIGATION_DIRECTION_UP:B = 0x0t

.field private static final JNI_PLAY_STATUS_ERROR:B = -0x1t

.field private static final JNI_PLAY_STATUS_FWD_SEEK:B = 0x3t

.field private static final JNI_PLAY_STATUS_PAUSED:B = 0x2t

.field private static final JNI_PLAY_STATUS_PLAYING:B = 0x1t

.field private static final JNI_PLAY_STATUS_REV_SEEK:B = 0x4t

.field private static final JNI_PLAY_STATUS_STOPPED:B = 0x0t

.field public static final KEY_STATE_PRESSED:I = 0x0

.field public static final KEY_STATE_RELEASED:I = 0x1

.field static final MAXIMUM_CONNECTED_DEVICES:I = 0x5

.field public static final PASS_THRU_CMD_ID_BACKWARD:I = 0x4c

.field public static final PASS_THRU_CMD_ID_FF:I = 0x49

.field public static final PASS_THRU_CMD_ID_FORWARD:I = 0x4b

.field public static final PASS_THRU_CMD_ID_PAUSE:I = 0x46

.field public static final PASS_THRU_CMD_ID_PLAY:I = 0x44

.field public static final PASS_THRU_CMD_ID_REWIND:I = 0x48

.field public static final PASS_THRU_CMD_ID_STOP:I = 0x45

.field public static final PASS_THRU_CMD_ID_VOL_DOWN:I = 0x42

.field public static final PASS_THRU_CMD_ID_VOL_UP:I = 0x41

.field static final TAG:Ljava/lang/String; = "AvrcpControllerService"

.field static final VDBG:Z

.field static sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

.field private static sService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCoverArtEnabled:Z

.field protected mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

.field protected mDeviceStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "AvrcpControllerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    .line 48
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->VDBG:Z

    .line 121
    invoke-static {}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->classInitNative()V

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtEnabled:Z

    .line 126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 127
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method public static getAvrcpControllerService()Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;
    .locals 1

    .line 163
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    return-object v0
.end method

.method private getRcFeatures([BI)V
    .locals 0

    .line 366
    return-void
.end method

.method private getRcPsm([BI)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 371
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcPsm(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", psm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 373
    if-eqz p1, :cond_1

    .line 374
    const/16 v0, 0xdc

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 377
    :cond_1
    return-void
.end method

.method private handleAddressedPlayerChanged([BI)V
    .locals 2

    .line 670
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAddressedPlayerChanged id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 676
    if-eqz p1, :cond_1

    .line 677
    const/16 v0, 0xd7

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 680
    :cond_1
    return-void
.end method

.method private handleChangeFolderRsp([BI)V
    .locals 2

    .line 632
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleChangeFolderRsp count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 637
    if-eqz p1, :cond_1

    .line 638
    const/16 v0, 0xd4

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 641
    :cond_1
    return-void
.end method

.method private handleGroupNavigationRsp(II)V
    .locals 2

    .line 334
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group navigation response received as: key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AvrcpControllerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    return-void
.end method

.method private handleNowPlayingContentChanged([B)V
    .locals 2

    .line 683
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 684
    const-string v0, "AvrcpControllerService"

    const-string v1, "handleNowPlayingContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 689
    if-eqz p1, :cond_1

    .line 690
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->nowPlayingContentChanged()V

    .line 692
    :cond_1
    return-void
.end method

.method private handlePassthroughRsp(II[B)V
    .locals 2

    .line 327
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passthrough response received as: key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "address:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AvrcpControllerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    return-void
.end method

.method private declared-synchronized handlePlayerAppSetting([B[BI)V
    .locals 3

    monitor-enter p0

    .line 488
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlayerAppSetting rspLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 493
    if-eqz p1, :cond_1

    .line 494
    nop

    .line 495
    invoke-static {p2}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->makeSupportedSettings([B)Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    move-result-object p2

    .line 496
    const/16 p3, 0xd9

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_1
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleRegisterNotificationAbsVol([BB)V
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    sget-boolean p2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p2, :cond_0

    .line 387
    const-string p2, "AvrcpControllerService"

    const-string v0, "handleRegisterNotificationAbsVol"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 391
    if-eqz p1, :cond_1

    .line 392
    const/16 p2, 0xcc

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_1
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleSetAbsVolume([BBB)V
    .locals 1

    monitor-enter p0

    .line 399
    :try_start_0
    sget-boolean p3, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p3, :cond_0

    .line 400
    const-string p3, "AvrcpControllerService"

    const-string v0, "handleSetAbsVolume "

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 404
    if-eqz p1, :cond_1

    .line 405
    const/16 p3, 0xcb

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_1
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleSetAddressedPlayerRsp([BI)V
    .locals 2

    .line 657
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetAddressedPlayerRsp status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AvrcpControllerService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 663
    if-eqz p1, :cond_1

    .line 664
    const/16 p2, 0xd6

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(I)V

    .line 667
    :cond_1
    return-void
.end method

.method private handleSetBrowsedPlayerRsp([BII)V
    .locals 2

    .line 644
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetBrowsedPlayerRsp depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 649
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 650
    if-eqz p1, :cond_1

    .line 651
    const/16 v0, 0xd5

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(III)V

    .line 654
    :cond_1
    return-void
.end method

.method private native initNative()V
.end method

.method private onAvailablePlayerChanged([B)V
    .locals 2

    .line 520
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "AvrcpControllerService"

    const-string v1, " onAvailablePlayerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 526
    if-eqz p1, :cond_1

    .line 527
    const/16 v0, 0xdb

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(I)V

    .line 529
    :cond_1
    return-void
.end method

.method private declared-synchronized onConnectionStateChanged(ZZ[B)V
    .locals 3

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    .line 344
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    if-nez p3, :cond_1

    .line 349
    const-string p1, "AvrcpControllerService"

    const-string p2, "onConnectionStateChanged Device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    nop

    .line 354
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->connectionStateChanged(ZZ)Lcom/android/bluetooth/avrcpcontroller/StackEvent;

    move-result-object v0

    .line 355
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p3

    .line 356
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->disconnect()V

    goto :goto_1

    .line 357
    :cond_3
    :goto_0
    invoke-virtual {p3, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->connect(Lcom/android/bluetooth/avrcpcontroller/StackEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :goto_1
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPlayPositionChanged([BII)V
    .locals 3

    monitor-enter p0

    .line 440
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayPositionChanged pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 445
    if-eqz p1, :cond_1

    .line 446
    const/16 v0, 0xce

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_1
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPlayStatusChanged([BB)V
    .locals 4

    monitor-enter p0

    .line 454
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    nop

    .line 458
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    .line 475
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x5

    .line 473
    goto :goto_0

    .line 469
    :cond_2
    nop

    .line 470
    goto :goto_0

    .line 466
    :cond_3
    nop

    .line 467
    move v0, v2

    goto :goto_0

    .line 463
    :cond_4
    nop

    .line 464
    move v0, v1

    goto :goto_0

    .line 460
    :cond_5
    nop

    .line 461
    move v0, v3

    .line 477
    :goto_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_6

    .line 480
    const/16 p2, 0xcf

    invoke-virtual {p1, p2, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_6
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPlayerAppSettingChanged([B[BI)V
    .locals 1

    monitor-enter p0

    .line 504
    :try_start_0
    sget-boolean p3, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p3, :cond_0

    .line 505
    const-string p3, "AvrcpControllerService"

    const-string v0, "onPlayerAppSettingChanged "

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    iget-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 509
    if-eqz p1, :cond_1

    .line 511
    nop

    .line 512
    invoke-static {p2}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->makeSettings([B)Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    move-result-object p2

    .line 513
    const/16 p3, 0xda

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_1
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onTrackChanged([BB[I[Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    sget-boolean p2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p2, :cond_0

    .line 414
    const-string p2, "AvrcpControllerService"

    const-string v0, "onTrackChanged"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p2

    .line 419
    if-eqz p2, :cond_2

    .line 420
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 421
    invoke-virtual {v0, p3, p4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->fromAvrcpAttributeArray([I[Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 422
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 423
    const/4 p3, 0x3

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setItemType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 424
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 425
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p3

    .line 426
    iget-object p4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz p4, :cond_1

    .line 427
    invoke-virtual {p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtHandle()Ljava/lang/String;

    move-result-object p4

    .line 428
    if-eqz p4, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-virtual {v0, p1, p4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getUuidForHandle(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtUuid(Ljava/lang/String;)V

    .line 432
    :cond_1
    const/16 p1, 0xcd

    invoke-virtual {p2, p1, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_2
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private refreshContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 1

    .line 181
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->requestContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 189
    :cond_1
    return-void
.end method

.method private setPlayerAppSettingRsp([BB)V
    .locals 0

    .line 382
    return-void
.end method


# virtual methods
.method public native changeFolderPathNative([BBJ)V
.end method

.method createFromNativeFolderItem([BJILjava/lang/String;I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    .locals 2

    .line 599
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFromNativeFolderItem uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " playable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 605
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    .line 606
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 607
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setItemType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 608
    invoke-virtual {v0, p4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 609
    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUid(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 610
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 611
    invoke-virtual {v0, p5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDisplayableName(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 612
    const/4 p1, 0x1

    if-ne p6, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setPlayable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 613
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setBrowsable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 614
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p1

    return-object p1
.end method

.method createFromNativeMediaItem([BJILjava/lang/String;[I[Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;
    .locals 2

    .line 580
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFromNativeMediaItem uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " attrids: "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " attrVals: "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "AvrcpControllerService"

    invoke-static {v0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    iget-object p5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p5, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 586
    new-instance p5, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    invoke-direct {p5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;-><init>()V

    invoke-virtual {p5, p6, p7}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->fromAvrcpAttributeArray([I[Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    move-result-object p5

    .line 587
    invoke-virtual {p5, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 588
    const/4 p1, 0x3

    invoke-virtual {p5, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setItemType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 589
    invoke-virtual {p5, p4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setType(I)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 590
    invoke-virtual {p5, p2, p3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUid(J)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 591
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setUuid(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 592
    const/4 p1, 0x1

    invoke-virtual {p5, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->setPlayable(Z)Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;

    .line 593
    invoke-virtual {p5}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem$Builder;->build()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object p1

    .line 594
    return-object p1
.end method

.method createFromNativePlayerItem([BILjava/lang/String;[BII)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;
    .locals 8

    .line 619
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFromNativePlayerItem name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportFlags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " play status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " player type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 626
    new-instance p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;[BII)V

    .line 628
    return-object p1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    monitor-enter p0

    .line 702
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->dump(Ljava/lang/StringBuilder;)V

    .line 705
    const-string v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAP disconnect device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", InstanceMap start state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 711
    monitor-exit p0

    return v1

    .line 713
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getState()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 716
    monitor-exit p0

    return v1

    .line 718
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->disconnect()V

    .line 719
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_3

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->dump(Ljava/lang/StringBuilder;)V

    .line 722
    const-string v1, "AvrcpControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAP disconnect device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", InstanceMap start state: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 722
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    :cond_3
    monitor-exit p0

    return v4

    .line 701
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 784
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Devices Tracked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== StateMachine for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 791
    goto :goto_0

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n  sBrowseTree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n  Cover Artwork Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "True"

    goto :goto_1

    :cond_1
    const-string v1, "False"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz v0, :cond_2

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_2
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 736
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 778
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getState()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :goto_0
    monitor-exit p0

    return p1

    .line 776
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContents(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 218
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AvrcpControllerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContents("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->findBrowseNodeByID(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    .line 221
    if-nez v0, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 223
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->findNode(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    .line 225
    const-string p1, "AvrcpControllerService"

    const-string v1, "Found a node"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    goto :goto_1

    .line 228
    :cond_1
    goto :goto_0

    .line 233
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 234
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p1, :cond_3

    const-string p1, "AvrcpControllerService"

    const-string v0, "Didn\'t find a node"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 237
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->isCached()Z

    move-result p1

    if-nez p1, :cond_6

    .line 238
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p1, :cond_5

    const-string p1, "AvrcpControllerService"

    const-string v1, "node is not cached"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->refreshContents(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 241
    :cond_6
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p1, :cond_7

    const-string p1, "AvrcpControllerService"

    const-string v1, "Returning contents"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_7
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getContents()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 217
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getCoverArtManager()Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    return-object v0
.end method

.method protected getCurrentMetadataIfNoCoverArt(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 171
    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtLocation()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 176
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getCurrentMetadataNative([B)V

    .line 178
    :cond_2
    return-void
.end method

.method public native getCurrentMetadataNative([B)V
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 758
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    const-string v1, "AvrcpControllerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicesMatchingConnectionStates"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 762
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 763
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 764
    sget-boolean v5, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    const/4 v5, 0x0

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 766
    aget v6, p1, v5

    if-ne v4, v6, :cond_2

    .line 767
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 770
    :cond_3
    goto :goto_0

    .line 771
    :cond_4
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_5
    const-string p1, "GetDevicesDone"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-object v0
.end method

.method public native getFolderListNative([BII)V
.end method

.method public native getNowPlayingListNative([BII)V
.end method

.method protected getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 745
    if-nez v0, :cond_0

    .line 746
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->newStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->start()V

    .line 750
    :cond_0
    return-object v0
.end method

.method public native getPlaybackStateNative([B)V
.end method

.method public native getPlayerListNative([BII)V
.end method

.method protected getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    return-object p1
.end method

.method handleGetFolderItemsRsp([BI[Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V
    .locals 6

    .line 533
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    const-string v1, "AvrcpControllerService"

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetFolderItemsRsp called with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " items "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " items."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 539
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    array-length v0, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p3, v2

    .line 541
    sget-boolean v4, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->VDBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz v4, :cond_2

    .line 543
    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtHandle()Ljava/lang/String;

    move-result-object v4

    .line 544
    if-eqz v4, :cond_2

    .line 545
    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-virtual {v5, p1, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->getUuidForHandle(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->setCoverArtUuid(Ljava/lang/String;)V

    .line 548
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 552
    if-eqz p1, :cond_4

    .line 553
    const/16 p3, 0xd1

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 556
    :cond_4
    return-void
.end method

.method handleGetPlayerItemsRsp([B[Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;)V
    .locals 7

    .line 559
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    const-string v1, "AvrcpControllerService"

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetFolderItemsRsp called with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 565
    sget-boolean v5, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->VDBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bt player item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    move-result-object p1

    .line 571
    if-eqz p1, :cond_3

    .line 572
    const/16 p2, 0xd3

    invoke-virtual {p1, p2, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 575
    :cond_3
    return-void
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 248
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$AvrcpControllerServiceBinder;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;)V

    return-object v0
.end method

.method protected newStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
    .locals 1

    .line 167
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;)V

    return-object v0
.end method

.method playItem(Ljava/lang/String;)V
    .locals 4

    .line 192
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    const-string v1, "AvrcpControllerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playItem("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->findBrowseNodeByID(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v0

    .line 195
    if-nez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 198
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->findNode(Ljava/lang/String;)Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_2

    .line 200
    sget-boolean p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->DBG:Z

    if-eqz p1, :cond_1

    const-string p1, "Found a node"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->playItem(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 202
    goto :goto_1

    .line 204
    :cond_2
    goto :goto_0

    .line 206
    :cond_3
    :goto_1
    return-void
.end method

.method public native playItemNative([BBJI)V
.end method

.method public removeStateMachine(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    return-void
.end method

.method public native sendAbsVolRspNative([BII)V
.end method

.method public native sendGroupNavigationCommandNative([BII)Z
.end method

.method public native sendPassThroughCommandNative([BII)Z
.end method

.method public native sendRegisterAbsVolRspNative([BBII)V
.end method

.method public native setAddressedPlayerNative([BI)V
.end method

.method public native setBrowsedPlayerNative([BI)V
.end method

.method public native setPlayerApplicationSettingValuesNative([BB[B[B)V
.end method

.method protected declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->initNative()V

    .line 132
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtEnabled:Z

    .line 133
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    new-instance v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$ImageDownloadCallback;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService$1;)V

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;-><init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$Callback;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    .line 136
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    .line 137
    sput-object p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stop()Z
    .locals 2

    monitor-enter p0

    .line 147
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->stopService(Landroid/content/Intent;)Z

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 150
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->quitNow()V

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    .line 154
    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;->cleanup()V

    .line 157
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->mCoverArtManager:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
