.class Lcom/android/bluetooth/opp/TestTcpListener$1;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/TestTcpListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mServerSocket:Ljava/net/ServerSocket;

.field final synthetic this$0:Lcom/android/bluetooth/opp/TestTcpListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/TestTcpListener;Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 398
    const-string v0, "Error accept connection "

    const-string v1, "BtOppRfcommListener"

    const-string v2, "RfcommSocket listen thread starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create server RfcommSocket on channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    .line 403
    invoke-static {v4}, Lcom/android/bluetooth/opp/TestTcpListener;->access$100(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x1964

    invoke-direct {v3, v4, v2}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_0

    .line 406
    :catch_0
    move-exception v3

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error listing on channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v4}, Lcom/android/bluetooth/opp/TestTcpListener;->access$100(Lcom/android/bluetooth/opp/TestTcpListener;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v3, v2}, Lcom/android/bluetooth/opp/TestTcpListener;->access$202(Lcom/android/bluetooth/opp/TestTcpListener;Z)Z

    .line 410
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v2}, Lcom/android/bluetooth/opp/TestTcpListener;->access$200(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 412
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 413
    iget-object v2, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 414
    if-nez v2, :cond_2

    .line 415
    invoke-static {}, Lcom/android/bluetooth/opp/TestTcpListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    const-string v2, "incomming connection time out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_2
    const-string v3, "RfcommSocket connected!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remote addr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v3, Lcom/android/bluetooth/opp/TestTcpTransport;

    invoke-direct {v3, v2}, Lcom/android/bluetooth/opp/TestTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 426
    iget-object v4, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v4}, Lcom/android/bluetooth/opp/TestTcpListener;->access$300(Lcom/android/bluetooth/opp/TestTcpListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 427
    const/16 v4, 0x64

    iput v4, v2, Landroid/os/Message;->what:I

    .line 428
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 433
    :catch_1
    move-exception v2

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 431
    :catch_2
    move-exception v2

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    :goto_1
    nop

    .line 437
    :goto_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/TestTcpListener$1;->this$0:Lcom/android/bluetooth/opp/TestTcpListener;

    invoke-static {v2}, Lcom/android/bluetooth/opp/TestTcpListener;->access$200(Lcom/android/bluetooth/opp/TestTcpListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    const-string v2, "socketAcceptThread thread was interrupted (2), exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :cond_4
    const-string v0, "RfcommSocket listen thread finished"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method
