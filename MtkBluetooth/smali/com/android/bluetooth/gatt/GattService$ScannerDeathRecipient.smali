.class Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;
.super Ljava/lang/Object;
.source "GattService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScannerDeathRecipient"
.end annotation


# instance fields
.field mScannerId:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->mScannerId:I

    .line 407
    return-void
.end method

.method private getScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$100(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

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

    .line 424
    iget v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v2, p1, :cond_0

    .line 425
    return-object v1

    .line 427
    :cond_0
    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$100(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 429
    iget v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v2, p1, :cond_2

    .line 430
    return-object v1

    .line 432
    :cond_2
    goto :goto_1

    .line 433
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 411
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder is dead - unregistering scanner ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->mScannerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->mScannerId:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->getScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    .line 417
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    .line 418
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v0, v0, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService;->stopScan(I)V

    .line 420
    :cond_1
    return-void
.end method
