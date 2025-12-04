.class Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 355
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 356
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 360
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler(): got msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 423
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 424
    invoke-virtual {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->quitNow()V

    .line 426
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    monitor-exit p1

    .line 429
    goto/16 :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 402
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 403
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 404
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 388
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-nez p1, :cond_1

    .line 389
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 390
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "StartingObexPbapTransaction"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 392
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 393
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 394
    const-string p1, "BluetoothPbapService"

    const-string v0, "Acquire Wake Lock"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    move-result-object p1

    const/16 v0, 0x138d

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->removeMessages(I)V

    .line 397
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 398
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 397
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 400
    goto/16 :goto_0

    .line 431
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto/16 :goto_0

    .line 420
    :pswitch_4
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->rolloverCounters()V

    .line 421
    goto/16 :goto_0

    .line 417
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 418
    goto :goto_0

    .line 414
    :pswitch_6
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$802(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 415
    goto :goto_0

    .line 411
    :pswitch_7
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 412
    goto :goto_0

    .line 408
    :pswitch_8
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 409
    goto :goto_0

    .line 378
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v2, 0x7f0e0069

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/pbap/PbapStateMachine;

    .line 381
    invoke-virtual {p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/pbap/PbapStateMachine;->sendMessage(I)V

    .line 386
    goto :goto_0

    .line 366
    :pswitch_a
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/16 v0, 0x13

    const/16 v1, 0x1025

    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/ObexServerSockets;->createWithFixedChannels(Lcom/android/bluetooth/IObexConnectionHandler;II)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$202(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/ObexServerSockets;)Lcom/android/bluetooth/ObexServerSockets;

    .line 369
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object p1

    if-nez p1, :cond_2

    .line 370
    const-string p1, "BluetoothPbapService"

    const-string v0, "ObexServerSockets.create() returned null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    goto :goto_0

    .line 373
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 375
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object p1, p1, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->fetchPbapParams(Landroid/content/Context;)V

    .line 376
    nop

    .line 435
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x138c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
