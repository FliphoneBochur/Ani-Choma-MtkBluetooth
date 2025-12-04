.class public Lcom/android/bluetooth/map/BluetoothMapMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMapMasInstance.java"

# interfaces
.implements Lcom/android/bluetooth/IObexConnectionHandler;


# static fields
.field private static final BLUETOOTH_MAP_VERSION_PROPERTY:Ljava/lang/String; = "persist.bluetooth.mapversion"

.field private static final D:Z

.field static final SDP_MAP_MAS_FEATURES_1_2:I = 0x7f

.field static final SDP_MAP_MAS_FEATURES_1_3:I = 0x603ff

.field static final SDP_MAP_MAS_FEATURES_1_4:I = 0x603ff

.field private static final SDP_MAP_MAS_VERSION_1_2:I = 0x102

.field private static final SDP_MAP_MAS_VERSION_1_3:I = 0x103

.field private static final SDP_MAP_MAS_VERSION_1_4:I = 0x104

.field private static final SDP_MAP_MSG_TYPE_EMAIL:I = 0x1

.field private static final SDP_MAP_MSG_TYPE_IM:I = 0x10

.field private static final SDP_MAP_MSG_TYPE_MMS:I = 0x8

.field private static final SDP_MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field private static final SDP_MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field public static final TYPE_EMAIL_STR:Ljava/lang/String; = "EMAIL"

.field public static final TYPE_IM_STR:Ljava/lang/String; = "IM"

.field public static final TYPE_SMS_MMS_STR:Ljava/lang/String; = "SMS/MMS"

.field private static final V:Z

.field private static sFeatureMask:I

.field private static volatile sInstanceCounter:I


# instance fields
.field private volatile mAcceptNewConnections:Z

.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBaseUri:Ljava/lang/String;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEnableSmsMms:Z

.field private mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private mImEmailConvoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field

.field private mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile mInterrupted:Z

.field private mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

.field private mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mMasInstanceId:I

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoteFeatureMask:I

.field private mSdpHandle:I

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

.field private mServiceHandler:Landroid/os/Handler;

.field private volatile mShutdown:Z

.field private mSmsMmsConvoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    .line 46
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    .line 47
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    .line 109
    const/16 v0, 0x7f

    sput v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 74
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptNewConnections:Z

    .line 81
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 82
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 83
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 85
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 86
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 88
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    .line 97
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    .line 98
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    .line 108
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothMapMasInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 74
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptNewConnections:Z

    .line 81
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 82
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 83
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 85
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 86
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 88
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    .line 97
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    .line 98
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    .line 108
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothMapMasInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sInstanceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 126
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    .line 127
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 129
    if-eqz p3, :cond_0

    .line 130
    iget-object p1, p3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    .line 132
    :cond_0
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    .line 133
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    .line 134
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->init()V

    .line 135
    return-void
.end method

.method private declared-synchronized closeConnectionSocket()V
    .locals 4

    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :goto_0
    :try_start_2
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 482
    goto :goto_2

    .line 481
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 478
    :catch_0
    move-exception v1

    .line 479
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v3, "Close Connection Socket error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 481
    :goto_1
    :try_start_4
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 482
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 484
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 474
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeServerSockets(Z)V
    .locals 1

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    .line 470
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createMasSdpRecord(II)I
    .locals 11

    .line 327
    nop

    .line 328
    nop

    .line 329
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    nop

    .line 331
    const/16 v0, 0xe

    const-string v2, "SMS/MMS"

    goto :goto_0

    .line 329
    :cond_0
    const-string v2, ""

    move v0, v1

    .line 335
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 336
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v3, :cond_2

    .line 337
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_1

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/EMAIL"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_3

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/IM"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 346
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_4

    .line 347
    or-int/lit8 v0, v0, 0x1

    move v9, v0

    move-object v4, v2

    goto :goto_2

    .line 348
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_5

    .line 349
    or-int/lit8 v0, v0, 0x10

    move v9, v0

    move-object v4, v2

    goto :goto_2

    .line 348
    :cond_5
    move v9, v0

    move-object v4, v2

    goto :goto_2

    .line 335
    :cond_6
    move v9, v0

    move-object v4, v2

    .line 353
    :goto_2
    const-string v0, "persist.bluetooth.mapversion"

    const-string v2, "map12"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_7
    goto :goto_3

    :pswitch_0
    const-string v1, "map14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v6

    goto :goto_4

    :pswitch_1
    const-string v1, "map13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v7

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :goto_3
    move v1, v3

    :goto_4
    const/16 v0, 0x7f

    const/16 v2, 0x102

    if-eqz v1, :cond_a

    const v3, 0x603ff

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_8

    .line 370
    nop

    .line 371
    sput v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    move v8, v2

    goto :goto_5

    .line 366
    :cond_8
    const/16 v0, 0x104

    .line 367
    sput v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    .line 368
    move v8, v0

    goto :goto_5

    .line 362
    :cond_9
    const/16 v0, 0x103

    .line 363
    sput v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    .line 364
    move v8, v0

    goto :goto_5

    .line 358
    :cond_a
    nop

    .line 359
    sput v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    .line 360
    move v8, v2

    .line 374
    :goto_5
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v3

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    sget v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    .line 375
    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/bluetooth/sdp/SdpManager;->createMapMasRecord(Ljava/lang/String;IIIIII)I

    move-result p1

    .line 374
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x62dc47d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFeatureMask()I
    .locals 1

    .line 506
    sget v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    return v0
.end method

.method private init()V
    .locals 1

    .line 160
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 161
    return-void
.end method

.method private removeSdpRecord()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing SDP record for MAS instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Object reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "SDP handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveSDPrecord returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 147
    :cond_1
    return-void
.end method

.method private updateDbIdentifier()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 175
    return-void
.end method


# virtual methods
.method getCombinedConvoListVersionCounter()J
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 265
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 266
    return-wide v0
.end method

.method getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContactList:Ljava/util/Map;

    return-object v0
.end method

.method getDbIdentifier()J
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getFolderVersionCounter()J
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getImEmailConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    return-object v0
.end method

.method getMasId()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    return v0
.end method

.method getMsgListMms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListSms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method public getRemoteFeatureMask()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    return v0
.end method

.method getSmsMmsConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 421
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onAcceptFailed()V
    .locals 2

    monitor-enter p0

    .line 534
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 535
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "Failed to accept incomming connection - shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "Failed to accept incomming connection - restarting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startSocketListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_0
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 2

    monitor-enter p0

    .line 511
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptNewConnections:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 512
    monitor-exit p0

    return v1

    .line 516
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z

    move-result v0

    .line 518
    if-eqz v0, :cond_1

    .line 519
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 520
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 521
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptNewConnections:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :cond_1
    monitor-exit p0

    return v0

    .line 510
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public restartObexServerSession()V
    .locals 2

    .line 458
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "MAP Service restartObexServerSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startSocketListeners()V

    .line 462
    return-void
.end method

.method setContactList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContactList:Ljava/util/Map;

    .line 229
    return-void
.end method

.method setImEmailConvoList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    .line 245
    return-void
.end method

.method setMsgListMms(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    .line 213
    return-void
.end method

.method setMsgListMsg(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    .line 221
    return-void
.end method

.method setMsgListSms(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    .line 205
    return-void
.end method

.method public setRemoteFeatureMask(I)V
    .locals 3

    .line 487
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteFeatureMask : Curr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    sget v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->sFeatureMask:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    .line 491
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->savePeerSupportUtcTimeStamp(I)V

    .line 492
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz p1, :cond_1

    .line 493
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setObserverRemoteFeatureMask(I)V

    .line 494
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setRemoteFeatureMask(I)V

    .line 495
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz p1, :cond_1

    .line 496
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemoteFeatureMask : set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    return-void
.end method

.method setSmsMmsConvoList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    .line 237
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 433
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "MAP Service shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 439
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 443
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->removeSdpRecord()V

    .line 448
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeServerSockets(Z)V

    .line 452
    return-void
.end method

.method public startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map Service startObexServerSession masid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    .line 391
    return v7

    .line 394
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 395
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 397
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    .line 398
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    .line 401
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v8, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setRemoteFeatureMask(I)V

    .line 403
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 404
    new-instance v1, Ljavax/obex/ServerSession;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 405
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "    ServerSession started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    return v7

    .line 411
    :cond_3
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "    No connection for this instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized startSocketListeners()V
    .locals 3

    monitor-enter p0

    .line 273
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "Map Service startSocketListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 278
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v2, "mServerSession exists - shutting it down..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 282
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_4

    .line 285
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v2, "mObserver exists - shutting it down..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    .line 289
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 292
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 295
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptNewConnections:Z

    goto :goto_0

    .line 299
    :cond_5
    const/16 v0, 0x1a

    const/16 v2, 0x1029

    .line 300
    invoke-static {p0, v0, v2}, Lcom/android/bluetooth/ObexServerSockets;->createWithFixedChannels(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 302
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAcceptNewConnections:Z

    .line 304
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-nez v0, :cond_6

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    const-string v1, "Failed to start the listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 309
    :cond_6
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->removeSdpRecord()V

    .line 310
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets;->getRfcommChannel()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 311
    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->getL2capPsm()I

    move-result v1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->createMasSdpRecord(II)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    .line 313
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_7

    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new SDP record for MAS instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Object reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "SDP handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_7
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateDbIdentifier()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MasId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SMS/MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateFolderVersionCounter()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 184
    return-void
.end method

.method updateImEmailConvoListVersionCounter()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 197
    return-void
.end method

.method updateSmsMmsConvoListVersionCounter()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 193
    return-void
.end method
