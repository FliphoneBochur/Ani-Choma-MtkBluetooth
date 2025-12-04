.class Lcom/android/bluetooth/mapclient/MnsObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "MnsObexServer.java"


# static fields
.field private static final MNS_TARGET:[B

.field private static final TAG:Ljava/lang/String; = "MnsObexServer"

.field private static final TYPE:Ljava/lang/String; = "x-bt/MAP-event-report"

.field private static final VDBG:Z = false


# instance fields
.field private final mObexServerSockets:Lcom/android/bluetooth/ObexServerSockets;

.field private final mStateMachineReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/bluetooth/mapclient/MceStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/mapclient/MnsObexServer;->MNS_TARGET:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x41t
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

.method constructor <init>(Lcom/android/bluetooth/mapclient/MceStateMachine;Lcom/android/bluetooth/ObexServerSockets;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MnsObexServer;->mStateMachineReference:Ljava/lang/ref/WeakReference;

    .line 64
    iput-object p2, p0, Lcom/android/bluetooth/mapclient/MnsObexServer;->mObexServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    .line 65
    return-void
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 143
    const/16 p1, 0xd1

    return p1
.end method

.method public onClose()V
    .locals 0

    .line 160
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1

    .line 74
    const/16 v0, 0x46

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 75
    sget-object v0, Lcom/android/bluetooth/mapclient/MnsObexServer;->MNS_TARGET:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 76
    const/16 p1, 0xc6

    return p1

    .line 82
    :cond_0
    nop

    .line 84
    const/16 p1, 0x4a

    sget-object v0, Lcom/android/bluetooth/mapclient/MnsObexServer;->MNS_TARGET:[B

    invoke-virtual {p2, p1, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 85
    const/16 p1, 0xa0

    return p1

    .line 78
    :catch_0
    move-exception p1

    .line 81
    const/16 p1, 0xd0

    return p1
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MnsObexServer;->mStateMachineReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->disconnect()Z

    .line 97
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 0

    .line 104
    const/16 p1, 0xc0

    return p1
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 3

    .line 115
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v0

    .line 117
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/mapclient/ObexAppParameters;

    move-result-object v0

    .line 119
    const-string v2, "x-bt/MAP-event-report"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->exists(B)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->getByte(B)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 124
    invoke-interface {p1}, Ljavax/obex/Operation;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/EventReport;->fromStream(Ljava/io/DataInputStream;)Lcom/android/bluetooth/mapclient/EventReport;

    move-result-object v0

    .line 125
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V

    .line 127
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MnsObexServer;->mStateMachineReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 128
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->receiveEvent(Lcom/android/bluetooth/mapclient/EventReport;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    nop

    .line 135
    const/16 p1, 0xa0

    return p1

    .line 120
    :cond_2
    :goto_0
    const/16 p1, 0xc0

    return p1

    .line 131
    :catch_0
    move-exception p1

    .line 132
    const-string v0, "MnsObexServer"

    const-string v1, "I/O exception when handling PUT request"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/16 p1, 0xd0

    return p1
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 0

    .line 152
    const/16 p1, 0xc0

    return p1
.end method
