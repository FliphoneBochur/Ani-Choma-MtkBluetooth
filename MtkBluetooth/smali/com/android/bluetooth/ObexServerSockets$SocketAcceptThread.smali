.class Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "ObexServerSockets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ObexServerSockets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private final mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/ObexServerSockets;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 299
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    .line 309
    if-eqz p2, :cond_0

    .line 312
    iput-object p2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 313
    return-void

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serverSocket cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 322
    const-string v0, "AcceptThread ended for: "

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 328
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accepting socket connection..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v2}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accepted socket connection from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connSocket is null - reattempt accept"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 343
    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v2}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getRemoteDevice() = null - reattempt accept"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    :try_start_3
    iget-object v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v2}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error closing the socket. ignoring..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    :goto_1
    goto :goto_0

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v3, v2, v1}, Lcom/android/bluetooth/ObexServerSockets;->access$100(Lcom/android/bluetooth/ObexServerSockets;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z

    move-result v2

    .line 357
    if-nez v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v2}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteDevice is invalid - creating ObexRejectServer."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v2, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v2, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 366
    new-instance v3, Ljavax/obex/ServerSession;

    new-instance v4, Lcom/android/bluetooth/ObexRejectServer;

    const/16 v5, 0xd3

    invoke-direct {v4, v5, v1}, Lcom/android/bluetooth/ObexRejectServer;-><init>(ILandroid/bluetooth/BluetoothSocket;)V

    const/4 v1, 0x0

    invoke-direct {v3, v2, v4, v1}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 373
    :catch_1
    move-exception v1

    .line 374
    :try_start_4
    iget-boolean v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    if-eqz v2, :cond_2

    goto :goto_2

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v2}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accept exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->access$200(Lcom/android/bluetooth/ObexServerSockets;)V

    .line 380
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 385
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    nop

    .line 388
    return-void

    .line 384
    :catchall_0
    move-exception v1

    .line 385
    iget-object v2, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v2}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    throw v1
.end method

.method public shutdown()V
    .locals 3

    .line 396
    iget-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mStopped:Z

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 405
    iget-object v1, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v1}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while thread shutdown:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->this$0:Lcom/android/bluetooth/ObexServerSockets;

    invoke-static {v0}, Lcom/android/bluetooth/ObexServerSockets;->access$000(Lcom/android/bluetooth/ObexServerSockets;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutdown called from another thread - interrupt()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcom/android/bluetooth/ObexServerSockets$SocketAcceptThread;->interrupt()V

    .line 418
    :cond_1
    return-void
.end method
