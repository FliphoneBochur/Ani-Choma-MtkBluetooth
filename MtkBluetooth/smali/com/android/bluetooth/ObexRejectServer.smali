.class public Lcom/android/bluetooth/ObexRejectServer;
.super Ljavax/obex/ServerRequestHandler;
.source "ObexRejectServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ID_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ObexRejectServer"

.field private static final TIMEOUT_VALUE:I = 0x1388

.field private static final V:Z = true


# instance fields
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mResult:I

.field private final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(ILandroid/bluetooth/BluetoothSocket;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/bluetooth/ObexRejectServer;->mResult:I

    .line 55
    iput-object p2, p0, Lcom/android/bluetooth/ObexRejectServer;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 56
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "TestTimeoutHandler"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 59
    iget-object p1, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 60
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/bluetooth/ObexRejectServer;->mMessageHandler:Landroid/os/Handler;

    .line 62
    const/4 p1, 0x1

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling message ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObexRejectServer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 96
    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ObexRejectServer;->shutdown()V

    .line 93
    nop

    .line 98
    return v0
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 69
    const-string p1, "ObexRejectServer"

    const-string p2, "onConnect() returning error"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget p1, p0, Lcom/android/bluetooth/ObexRejectServer;->mResult:I

    return p1
.end method

.method public shutdown()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/ObexRejectServer;->mMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/ObexRejectServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexRejectServer;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "ObexRejectServer"

    const-string v2, "Unable to close socket - ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_0
    return-void
.end method
