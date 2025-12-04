.class Lcom/android/bluetooth/opp/TestTcpServer;
.super Ljavax/obex/ServerRequestHandler;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final PORT:I = 0x1964

.field private static final TAG:Ljava/lang/String; = "ServerRequestHandler"

.field private static final V:Z


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 481
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/TestTcpServer;->V:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 502
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/TestTcpServer;->a:Z

    .line 503
    const-string v0, "enter construtor of TcpServer"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 504
    return-void
.end method


# virtual methods
.method public onAuthenticationFailure([B)V
    .locals 0

    .line 572
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 509
    const-string p1, "[server:] The client has created an OBEX session"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 511
    monitor-enter p0

    .line 513
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/TestTcpServer;->a:Z

    if-nez p1, :cond_0

    .line 514
    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 520
    :cond_0
    goto :goto_1

    .line 521
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 516
    :catch_0
    move-exception p1

    .line 517
    :try_start_1
    sget-boolean p1, Lcom/android/bluetooth/opp/TestTcpServer;->V:Z

    if-eqz p1, :cond_1

    .line 518
    const-string p1, "ServerRequestHandler"

    const-string p2, "Interrupted waiting for markBatchFailed"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    const-string p1, "[server:] we accpet the seesion"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 523
    const/16 p1, 0xa0

    return p1

    .line 521
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 0

    .line 582
    const/16 p1, 0xd1

    return p1
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 0

    .line 562
    const-string p1, "[server:] The client has disconnected the OBEX session"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 0

    .line 587
    const/16 p1, 0xd1

    return p1
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 6

    .line 528
    nop

    .line 530
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got data bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v3

    .line 533
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/obex/Operation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 535
    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    const/16 v0, 0x3e8

    :try_start_1
    new-array v0, v0, [B

    .line 540
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 541
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 545
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[server:] Wrote data to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    goto :goto_3

    .line 547
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 548
    :goto_1
    if-eqz p1, :cond_1

    .line 550
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 553
    goto :goto_2

    .line 551
    :catch_2
    move-exception p1

    .line 552
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 555
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    :goto_3
    const/16 p1, 0xa0

    return p1
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 0

    .line 577
    const/16 p1, 0xd1

    return p1
.end method

.method public run()V
    .locals 3

    .line 491
    :try_start_0
    const-string v0, "[server:] listen on port 6500"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;

    const/16 v1, 0x1964

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;-><init>(I)V

    .line 494
    const-string v1, "[server:] Now waiting for a client to connect"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/obex/ServerSession;

    .line 496
    const-string v0, "[server:] A client is now connected"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[server:] Caught the error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/TestTcpServer;->updateStatus(Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 2

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerRequestHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method
