.class final Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
.super Landroid/os/Handler;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 349
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMapService$1;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 354
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler(): got msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eq v0, v3, :cond_d

    if-eq v0, v6, :cond_c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a

    const/16 v3, 0x1388

    if-eq v0, v3, :cond_9

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 446
    :pswitch_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentObserver Registration MASID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Enable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 451
    if-eqz v0, :cond_f

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v3, :cond_f

    .line 453
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_2

    .line 454
    iget-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerObserver()V

    goto :goto_0

    .line 456
    :cond_2
    iget-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception p1

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentObserverRegistarion Failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    goto/16 :goto_1

    .line 436
    :pswitch_1
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 437
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 438
    const-string p1, "MNS SDP Initiate Search .."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    goto/16 :goto_1

    .line 442
    :cond_4
    const-string p1, "remoteDevice info not available"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    goto/16 :goto_1

    .line 425
    :pswitch_2
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p1, :cond_5

    .line 426
    const-string p1, "Release Wake Lock request message"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 429
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 430
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p1, :cond_f

    .line 431
    const-string p1, "  Released Wake Lock by message"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 404
    :pswitch_3
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p1, :cond_6

    .line 405
    const-string p1, "Acquire Wake Lock request message"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-nez p1, :cond_7

    .line 408
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v3, "StartingObexMapTransaction"

    invoke-virtual {p1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$802(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 411
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 413
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_8

    .line 414
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 415
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p1, :cond_8

    .line 416
    const-string p1, "  Acquired Wake Lock by message"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object p1

    const/16 v0, 0x138e

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 420
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 421
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 420
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    goto/16 :goto_1

    .line 373
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 374
    goto :goto_1

    .line 366
    :pswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$200(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 367
    goto :goto_1

    .line 389
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 390
    goto :goto_1

    .line 360
    :cond_a
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 361
    goto :goto_1

    .line 401
    :cond_b
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$700(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 402
    goto :goto_1

    .line 397
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnectMap(Landroid/bluetooth/BluetoothDevice;)V

    .line 398
    goto :goto_1

    .line 376
    :cond_d
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 377
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$500()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$600(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 384
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$402(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 385
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 386
    goto :goto_1

    .line 363
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 364
    nop

    .line 466
    :cond_f
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x138b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
