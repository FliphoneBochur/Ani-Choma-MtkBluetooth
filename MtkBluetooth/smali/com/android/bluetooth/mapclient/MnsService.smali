.class public Lcom/android/bluetooth/mapclient/MnsService;
.super Ljava/lang/Object;
.source "MnsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field static final EVENT_REPORT:I = 0x3e9

.field private static final MNS_VERSION:I = 0x104

.field static final MSG_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MnsService"

.field private static final VDBG:Ljava/lang/Boolean;

.field private static sAcceptThread:Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;

.field private static sContext:Lcom/android/bluetooth/mapclient/MapClientService;

.field private static sServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private static sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

.field private static sSessionHandler:Landroid/os/Handler;


# instance fields
.field private mSdpHandle:I

.field private volatile mShutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->DBG:Ljava/lang/Boolean;

    .line 44
    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->VDBG:Ljava/lang/Boolean;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sAcceptThread:Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;

    .line 49
    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sSessionHandler:Landroid/os/Handler;

    .line 50
    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 51
    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/mapclient/MapClientService;)V
    .locals 8

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/MnsService;->mShutdown:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/mapclient/MnsService;->mSdpHandle:I

    .line 58
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsService;->VDBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MnsService"

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "MnsService()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sput-object p1, Lcom/android/bluetooth/mapclient/MnsService;->sContext:Lcom/android/bluetooth/mapclient/MapClientService;

    .line 62
    new-instance p1, Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;-><init>(Lcom/android/bluetooth/mapclient/MnsService;Lcom/android/bluetooth/mapclient/MnsService$1;)V

    sput-object p1, Lcom/android/bluetooth/mapclient/MnsService;->sAcceptThread:Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;

    .line 63
    const/16 v0, 0x16

    const/16 v2, 0x1027

    invoke-static {p1, v0, v2}, Lcom/android/bluetooth/ObexServerSockets;->createWithFixedChannels(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p1

    sput-object p1, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 65
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    const-string p1, "SdpManager is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 70
    :cond_1
    sget-object p1, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 71
    invoke-virtual {p1}, Lcom/android/bluetooth/ObexServerSockets;->getRfcommChannel()I

    move-result v4

    sget-object p1, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {p1}, Lcom/android/bluetooth/ObexServerSockets;->getL2capPsm()I

    move-result v5

    const/16 v6, 0x104

    const/16 v7, 0x4f

    .line 70
    const-string v3, "MAP Message Notification Service"

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/sdp/SdpManager;->createMapMnsRecord(Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/mapclient/MnsService;->mSdpHandle:I

    .line 73
    return-void
.end method

.method static synthetic access$100()Lcom/android/bluetooth/ObexServerSockets;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/ObexServerSockets;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 0

    .line 38
    sput-object p0, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/mapclient/MnsService;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/bluetooth/mapclient/MnsService;->mShutdown:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsService;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/bluetooth/mapclient/MapClientService;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sContext:Lcom/android/bluetooth/mapclient/MapClientService;

    return-object v0
.end method

.method private cleanUpSdpRecord()V
    .locals 5

    .line 88
    iget v0, p0, Lcom/android/bluetooth/mapclient/MnsService;->mSdpHandle:I

    const-string v1, "MnsService"

    if-gez v0, :cond_0

    .line 89
    const-string v0, "cleanUpSdpRecord, SDP record never created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_0
    nop

    .line 93
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/mapclient/MnsService;->mSdpHandle:I

    .line 94
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    .line 95
    if-nez v2, :cond_1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpSdpRecord failed, sdpManager is null, sdpHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpSdpRecord, mSdpHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpSdpRecord, removeSdpRecord failed, sdpHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    return-void
.end method


# virtual methods
.method stop()V
    .locals 2

    .line 76
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsService;->VDBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "MnsService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/MnsService;->mShutdown:Z

    .line 80
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MnsService;->cleanUpSdpRecord()V

    .line 81
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-eqz v0, :cond_1

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/mapclient/MnsService;->sServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 85
    :cond_1
    return-void
.end method
