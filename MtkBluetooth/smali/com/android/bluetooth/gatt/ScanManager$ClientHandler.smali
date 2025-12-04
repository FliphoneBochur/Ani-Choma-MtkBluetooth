.class Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
.super Landroid/os/Handler;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    .line 269
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    return-void
.end method

.method private isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 7

    .line 416
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v1, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 420
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 421
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    nop

    .line 420
    :goto_0
    return v0

    .line 417
    :cond_2
    :goto_1
    return v0
.end method

.method private isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 5

    .line 425
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v1, :cond_0

    goto :goto_1

    .line 428
    :cond_0
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 429
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    return v0

    .line 432
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 433
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 426
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    .line 413
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received an unkown message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$400(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$UidImportance;)V

    .line 295
    goto :goto_0

    .line 291
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleResumeScans()V

    .line 292
    goto :goto_0

    .line 288
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleSuspendScans()V

    .line 289
    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->regularScanTimeout(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 286
    goto :goto_0

    .line 282
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 283
    goto :goto_0

    .line 279
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 280
    goto :goto_0

    .line 276
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 277
    nop

    .line 300
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method handleResumeScans()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 452
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    iget v3, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanResume(I)V

    .line 455
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 456
    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 458
    return-void
.end method

.method handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 304
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v1

    const-string v2, "BtGatt.ScanManager"

    if-eqz v1, :cond_1

    .line 306
    const-string v1, "handling starting scan"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    const-string p1, "Scan settings not supported"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$900(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start unfiltered scan in screen-off. This scan will be resumed later: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanSuspend(I)V

    .line 326
    :cond_4
    return-void

    .line 329
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1200(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v1

    .line 330
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start unfiltered scan in location-off. This scan will be resumed when location is on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    if-eqz v0, :cond_6

    .line 335
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanSuspend(I)V

    .line 337
    :cond_6
    return-void

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_8

    .line 343
    return-void

    .line 347
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_1

    .line 351
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 353
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$900(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 354
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    .line 356
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$1300(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 357
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 358
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 364
    :cond_a
    :goto_1
    return-void

    .line 315
    :cond_b
    :goto_2
    const-string p1, "Scan already started"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 368
    if-nez p1, :cond_0

    .line 369
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getRegularScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 383
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$1400(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;)I

    move-result v1

    if-nez v1, :cond_2

    .line 384
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->removeMessages(I)V

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$900(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    .line 390
    :cond_3
    goto :goto_0

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$200(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 399
    :cond_5
    :goto_0
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    if-eqz v0, :cond_7

    .line 400
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app died, unregister scanner - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.ScanManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterScanner(I)V

    .line 405
    :cond_7
    return-void
.end method

.method handleSuspendScans()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 438
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$900(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    .line 439
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    :cond_0
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    iget v3, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanSuspend(I)V

    .line 444
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 445
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_2
    goto :goto_0

    .line 448
    :cond_3
    return-void
.end method
