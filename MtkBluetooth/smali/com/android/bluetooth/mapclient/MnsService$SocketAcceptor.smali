.class Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;
.super Ljava/lang/Object;
.source "MnsService.java"

# interfaces
.implements Lcom/android/bluetooth/IObexConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptor"
.end annotation


# instance fields
.field private mInterrupted:Z

.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MnsService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/mapclient/MnsService;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;->this$0:Lcom/android/bluetooth/mapclient/MnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;->mInterrupted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/mapclient/MnsService;Lcom/android/bluetooth/mapclient/MnsService$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;-><init>(Lcom/android/bluetooth/mapclient/MnsService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAcceptFailed()V
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    const-string v0, "MnsService"

    const-string v1, "OnAcceptFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MnsService;->access$102(Lcom/android/bluetooth/ObexServerSockets;)Lcom/android/bluetooth/ObexServerSockets;

    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MnsService$SocketAcceptor;->this$0:Lcom/android/bluetooth/mapclient/MnsService;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MnsService;->access$200(Lcom/android/bluetooth/mapclient/MnsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "MnsService"

    const-string v1, "Failed to accept incomming connection - shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 4

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/mapclient/MnsService;->access$300()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "MnsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " SOCKET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/mapclient/MnsService;->access$400()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getMceStateMachineForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/mapclient/MceStateMachine;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 131
    const-string p2, "MnsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: NO statemachine for device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return v1

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 135
    const-string p2, "MnsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: statemachine for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not currently CONNECTED : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return v1

    .line 140
    :cond_2
    :try_start_2
    new-instance p1, Lcom/android/bluetooth/mapclient/MnsObexServer;

    invoke-static {}, Lcom/android/bluetooth/mapclient/MnsService;->access$100()Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/android/bluetooth/mapclient/MnsObexServer;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;Lcom/android/bluetooth/ObexServerSockets;)V

    .line 141
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v0, p2}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :try_start_3
    new-instance p2, Ljavax/obex/ServerSession;

    const/4 v2, 0x0

    invoke-direct {p2, v0, p1, v2}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 145
    :catch_0
    move-exception p1

    .line 146
    :try_start_4
    const-string p2, "MnsService"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    monitor-exit p0

    return v1

    .line 124
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
