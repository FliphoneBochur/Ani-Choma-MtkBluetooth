.class Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private mStopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 329
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->mStopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->access$100(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapService;->access$200(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    return-void

    .line 340
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->mStopped:Z

    if-nez v0, :cond_8

    .line 345
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$100(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    .line 346
    if-nez v1, :cond_1

    .line 347
    const-string v1, "SapService"

    const-string v2, "mServerSocket is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto/16 :goto_4

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->access$100(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/sap/SapService;->access$302(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 354
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->access$300(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-nez v2, :cond_2

    .line 356
    const-string v2, "SapService"

    const-string v3, "mConnSocket is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v1

    goto/16 :goto_4

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapService;->access$300(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/sap/SapService;->access$402(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 360
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_3

    .line 362
    const-string v1, "SapService"

    const-string v2, "getRemoteDevice() = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto/16 :goto_4

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    const v2, 0x7f0e0033

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sap/SapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    if-ne v1, v0, :cond_5

    .line 383
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$600(Lcom/android/bluetooth/sap/SapService;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 386
    :goto_1
    goto/16 :goto_2

    .line 384
    :catch_0
    move-exception v1

    .line 385
    :try_start_4
    const-string v2, "SapService"

    const-string v3, "catch exception starting obex server session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 387
    :cond_5
    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 388
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    const v3, 0x7f0e0069

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/sap/SapService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v3}, Lcom/android/bluetooth/sap/SapService;->access$400(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    const-string v2, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-virtual {v3}, Lcom/android/bluetooth/sap/SapService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2, v0}, Lcom/android/bluetooth/sap/SapService;->access$702(Lcom/android/bluetooth/sap/SapService;Z)Z

    .line 397
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->access$800(Lcom/android/bluetooth/sap/SapService;)V

    .line 398
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 405
    goto :goto_2

    .line 408
    :cond_6
    const-string v1, "SapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t connect with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as access is rejected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 411
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->access$900(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    :cond_7
    :goto_2
    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->mStopped:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 360
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 415
    :catch_1
    move-exception v1

    .line 416
    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->mStopped:Z

    .line 420
    :goto_3
    goto/16 :goto_0

    .line 422
    :cond_8
    :goto_4
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->mStopped:Z

    .line 426
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->interrupt()V

    .line 427
    return-void
.end method
