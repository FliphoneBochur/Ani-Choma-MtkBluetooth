.class public Lcom/android/bluetooth/mapclient/MasClient;
.super Ljava/lang/Object;
.source "MasClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/MasClient$MasClientHandler;,
        Lcom/android/bluetooth/mapclient/MasClient$CharsetType;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_UUID_OBEX_MAS:[B

.field private static final CONNECT:I = 0x0

.field private static final DBG:Z = false

.field private static final DISCONNECT:I = 0x1

.field private static final L2CAP_INVALID_PSM:I = -0x1

.field private static final MAP_FEATURE_BROWSING:I = 0x4

.field private static final MAP_FEATURE_EXTENDED_EVENT_REPORT_1_1:I = 0x40

.field private static final MAP_FEATURE_NOTIFICATION:I = 0x2

.field private static final MAP_FEATURE_NOTIFICATION_REGISTRATION:I = 0x1

.field private static final MAP_FEATURE_UPLOADING:I = 0x8

.field static final MAP_SUPPORTED_FEATURES:I = 0x4f

.field private static final OAP_TAGID_MAP_SUPPORTED_FEATURES:B = 0x29t

.field private static final REQUEST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MasClient"

.field private static final VDBG:Z = false


# instance fields
.field private final mCallback:Lcom/android/bluetooth/statemachine/StateMachine;

.field private mConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field mSdpMasRecord:Landroid/bluetooth/SdpMasRecord;

.field private mSession:Ljavax/obex/ClientSession;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private mThread:Landroid/os/HandlerThread;

.field private mTransport:Lcom/android/bluetooth/BluetoothObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/mapclient/MasClient;->BLUETOOTH_UUID_OBEX_MAS:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/statemachine/StateMachine;Landroid/bluetooth/SdpMasRecord;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mConnected:Z

    .line 90
    if-eqz p1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 94
    iput-object p2, p0, Lcom/android/bluetooth/mapclient/MasClient;->mCallback:Lcom/android/bluetooth/statemachine/StateMachine;

    .line 95
    iput-object p3, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSdpMasRecord:Landroid/bluetooth/SdpMasRecord;

    .line 96
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Client"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mThread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 100
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 101
    new-instance p2, Lcom/android/bluetooth/mapclient/MasClient$MasClientHandler;

    invoke-direct {p2, p1, p0}, Lcom/android/bluetooth/mapclient/MasClient$MasClientHandler;-><init>(Landroid/os/Looper;Lcom/android/bluetooth/mapclient/MasClient;)V

    iput-object p2, p0, Lcom/android/bluetooth/mapclient/MasClient;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Obex transport is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/bluetooth/mapclient/MasClient;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mConnected:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/mapclient/MasClient;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MasClient;->connect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/mapclient/MasClient;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MasClient;->disconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/mapclient/MasClient;Lcom/android/bluetooth/mapclient/Request;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MasClient;->executeRequest(Lcom/android/bluetooth/mapclient/Request;)V

    return-void
.end method

.method private connect()V
    .locals 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSdpMasRecord:Landroid/bluetooth/SdpMasRecord;

    invoke-virtual {v0}, Landroid/bluetooth/SdpMasRecord;->getL2capPsm()I

    move-result v0

    .line 110
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSdpMasRecord:Landroid/bluetooth/SdpMasRecord;

    invoke-virtual {v1}, Landroid/bluetooth/SdpMasRecord;->getRfcommCannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 124
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mTransport:Lcom/android/bluetooth/BluetoothObexTransport;

    .line 126
    new-instance v0, Ljavax/obex/ClientSession;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mTransport:Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v0, v1}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSession:Ljavax/obex/ClientSession;

    .line 127
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 128
    const/16 v1, 0x46

    sget-object v2, Lcom/android/bluetooth/mapclient/MasClient;->BLUETOOTH_UUID_OBEX_MAS:[B

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 129
    new-instance v1, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {v1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 131
    const/16 v2, 0x29

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BI)V

    .line 133
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 135
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v0}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mConnected:Z

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mCallback:Lcom/android/bluetooth/statemachine/StateMachine;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MasClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    goto :goto_2

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MasClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MasClient;->disconnect()V

    .line 152
    :goto_2
    return-void
.end method

.method private disconnect()V
    .locals 4

    .line 155
    const-string v0, "MasClient"

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 157
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught an exception while disconnecting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    goto :goto_1

    .line 164
    :catch_1
    move-exception v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught an exception while closing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mConnected:Z

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mCallback:Lcom/android/bluetooth/statemachine/StateMachine;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->sendMessage(I)V

    .line 171
    return-void
.end method

.method private executeRequest(Lcom/android/bluetooth/mapclient/Request;)V
    .locals 2

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/Request;->execute(Ljavax/obex/ClientSession;)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mCallback:Lcom/android/bluetooth/statemachine/StateMachine;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 177
    :catch_0
    move-exception p1

    .line 182
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MasClient;->disconnect()V

    .line 184
    :goto_0
    return-void
.end method


# virtual methods
.method getSdpMasRecord()Landroid/bluetooth/SdpMasRecord;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mSdpMasRecord:Landroid/bluetooth/SdpMasRecord;

    return-object v0
.end method

.method public makeRequest(Lcom/android/bluetooth/mapclient/Request;)Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding messages failed, state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MasClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shutdown()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MasClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 202
    return-void
.end method
