.class Lcom/android/bluetooth/opp/BluetoothOppService$2;
.super Landroid/os/Handler;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 326
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_e

    const/4 v5, 0x3

    if-eq v0, v5, :cond_d

    const-wide/16 v5, 0x3e8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_9

    const/16 v7, 0x64

    if-eq v0, v7, :cond_6

    const/16 p1, 0xc8

    if-eq v0, p1, :cond_0

    goto/16 :goto_5

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 329
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 331
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->onBatchCanceled()V

    .line 333
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iput-object v4, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->onBatchCanceled()V

    .line 338
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iput-object v4, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 343
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->interrupt()V

    .line 345
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 348
    const-wide/16 v0, 0x32

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    :goto_1
    goto :goto_0

    .line 349
    :catch_0
    move-exception p1

    .line 350
    const-string v0, "BtOppService"

    const-string v1, "Thread sleep"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 353
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter p1

    .line 354
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 356
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    goto :goto_2

    .line 357
    :catch_1
    move-exception v0

    .line 358
    :try_start_4
    const-string v1, "BtOppService"

    const-string v2, "Interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    :goto_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$502(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 362
    :cond_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$700(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 364
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$700(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->cancelNotifications()V

    goto/16 :goto_5

    .line 362
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 345
    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 401
    :cond_6
    const-string v0, "BtOppService"

    const-string v3, "Get incoming connection"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljavax/obex/ObexTransport;

    .line 411
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v0

    if-nez v0, :cond_7

    .line 412
    const-string v0, "BtOppService"

    const-string v1, "Start Obex Server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    goto/16 :goto_5

    .line 415
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 416
    const-string v0, "BtOppService"

    const-string v1, "OPP busy! Reject connection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :try_start_7
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 421
    :goto_3
    goto/16 :goto_5

    .line 419
    :catch_2
    move-exception p1

    .line 420
    const-string p1, "BtOppService"

    const-string v0, "close tranport error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 423
    :cond_8
    const-string v0, "BtOppService"

    const-string v3, "OPP busy! Retry after 1 second"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 425
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 426
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    .line 427
    iput v2, p1, Landroid/os/Message;->what:I

    .line 428
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    goto/16 :goto_5

    .line 433
    :cond_9
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_a

    .line 434
    const-string p1, "BtOppService"

    const-string v0, "Start Obex Server"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V

    .line 436
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 437
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_5

    .line 439
    :cond_a
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 440
    const-string p1, "BtOppService"

    const-string v0, "Retried 20 seconds, reject connection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_8
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;

    move-result-object p1

    invoke-interface {p1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 445
    goto :goto_4

    .line 443
    :catch_3
    move-exception p1

    .line 444
    const-string p1, "BtOppService"

    const-string v0, "close tranport error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_4
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 447
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->acceptNewConnections()V

    .line 449
    :cond_b
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 450
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    goto/16 :goto_5

    .line 452
    :cond_c
    const-string p1, "BtOppService"

    const-string v0, "OPP busy! Retry after 1 second"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;I)I

    .line 454
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    .line 455
    iput v2, p1, Landroid/os/Message;->what:I

    .line 456
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 389
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mInfo.id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for MEDIA_SCANNED_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 392
    nop

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 392
    const-string v2, "scanned"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v0

    .line 396
    :try_start_9
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1002(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 397
    monitor-exit v0

    .line 398
    goto/16 :goto_5

    .line 397
    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1

    .line 373
    :cond_e
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update mInfo.id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for data uri= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v2, "BtOppService"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "scanned"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "uri"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 382
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 381
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter p1

    .line 385
    :try_start_a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1002(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 386
    monitor-exit p1

    .line 387
    goto :goto_5

    .line 386
    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 368
    :cond_10
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 369
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$900(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 461
    :cond_11
    :goto_5
    return-void
.end method
