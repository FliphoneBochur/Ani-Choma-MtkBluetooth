.class public Lcom/android/bluetooth/ObexServerSockets;
.super Ljava/lang/Object;
.source "ObexServerSockets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final CREATE_RETRY_TIME:I = 0xa

.field private static final D:Z = true

.field private static final NUMBER_OF_SOCKET_TYPES:I = 0x2

.field private static final STAG:Ljava/lang/String; = "ObexServerSockets"

.field private static volatile sInstanceCounter:I


# instance fields
.field private final mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

.field private final mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

.field private final mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

.field private final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    .line 66
    iput-object p2, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 67
    iput-object p3, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObexServerSockets"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:I

    add-int/lit8 p3, p2, 0x1

    sput p3, Lcom/android/bluetooth/ObexServerSockets;->sInstanceCounter:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ObexServerSockets;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ObexServerSockets;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/ObexServerSockets;->onAcceptFailed()V

    return-void
.end method

.method public static create(Lcom/android/bluetooth/IObexConnectionHandler;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 2

    .line 79
    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;
    .locals 10

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create(rfcomm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l2capPsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObexServerSockets"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_7

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 140
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v7, v4

    move-object v5, v3

    move-object v6, v5

    :goto_0
    const/16 v8, 0xa

    if-ge v4, v8, :cond_5

    .line 141
    nop

    .line 143
    if-nez v5, :cond_1

    .line 144
    if-eqz p3, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    goto :goto_1

    .line 157
    :catch_0
    move-exception v7

    goto :goto_2

    .line 150
    :cond_1
    :goto_1
    if-nez v6, :cond_3

    .line 151
    if-eqz p3, :cond_2

    .line 152
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6

    goto :goto_3

    .line 154
    :cond_2
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 158
    :goto_2
    const-string v8, "Error create ServerSockets "

    invoke-static {v1, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    move v7, v2

    goto :goto_4

    .line 160
    :cond_3
    :goto_3
    const/4 v7, 0x1

    .line 161
    :goto_4
    if-nez v7, :cond_5

    .line 163
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    .line 164
    const/16 v9, 0xb

    if-eq v8, v9, :cond_4

    const/16 v9, 0xc

    if-eq v8, v9, :cond_4

    .line 166
    const-string p1, "initServerSockets failed as BT is (being) turned off"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto :goto_6

    .line 171
    :cond_4
    :try_start_1
    const-string v8, "waiting 300 ms..."

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-wide/16 v8, 0x12c

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    goto :goto_5

    .line 174
    :catch_1
    move-exception v8

    .line 175
    const-string v8, "create() was interrupted"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_5
    :goto_6
    if-eqz v7, :cond_6

    .line 184
    const-string p1, "Succeed to create listening sockets "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance p1, Lcom/android/bluetooth/ObexServerSockets;

    invoke-direct {p1, p0, v5, v6}, Lcom/android/bluetooth/ObexServerSockets;-><init>(Lcom/android/bluetooth/IObexConnectionHandler;Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothServerSocket;)V

    .line 187
    invoke-direct {p1}, Lcom/android/bluetooth/ObexServerSockets;->startAccept()V

    .line 188
    return-object p1

    .line 190
    :cond_6
    const-string p0, "Error to create listening socket after 10 try"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v3

    .line 133
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No bluetooth adapter..."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createInsecure(Lcom/android/bluetooth/IObexConnectionHandler;)Lcom/android/bluetooth/ObexServerSockets;
    .locals 2

    .line 92
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p0

    return-object p0
.end method

.method public static createInsecureWithFixedChannels(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInsecureWithFixedChannels(rfcomm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l2capPsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObexServerSockets"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p0

    return-object p0
.end method

.method public static createWithFixedChannels(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWithFixedChannels(rfcomm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l2capPsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObexServerSockets"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;IIZ)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized onAcceptFailed()V
    .locals 2

    monitor-enter p0

    .line 247
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    .line 248
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    const-string v1, "onAcceptFailed() calling shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0}, Lcom/android/bluetooth/IObexConnectionHandler;->onAcceptFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 3

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect() socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mConHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/bluetooth/IObexConnectionHandler;->onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 237
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startAccept()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    const-string v1, "startAccept()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 224
    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->start()V

    .line 226
    new-instance v0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;-><init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 227
    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->start()V

    .line 228
    return-void
.end method


# virtual methods
.method public getL2capPsm()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0
.end method

.method public getRfcommChannel()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v0

    return v0
.end method

.method public declared-synchronized shutdown(Z)V
    .locals 3

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdown(block = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->shutdown()V

    .line 270
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 273
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz p1, :cond_3

    .line 274
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {p1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->join()V

    .line 275
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    if-eqz p1, :cond_4

    .line 278
    iget-object p1, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    invoke-virtual {p1}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->join()V

    .line 279
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :cond_4
    :goto_1
    goto :goto_0

    .line 281
    :catch_0
    move-exception p1

    .line 282
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets;->mTag:Ljava/lang/String;

    const-string v2, "shutdown() interrupted, continue waiting..."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 286
    :cond_5
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mRfcommThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;

    .line 287
    iput-object v0, p0, Lcom/android/bluetooth/ObexServerSockets;->mL2capThread:Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :cond_6
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
