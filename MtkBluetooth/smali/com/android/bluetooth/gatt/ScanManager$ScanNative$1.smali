.class Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;
.super Landroid/content/BroadcastReceiver;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/gatt/ScanManager$ScanNative;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

.field final synthetic val$this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->val$this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "awakened up at time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 567
    const-string p2, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    iget-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;->this$1:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    iget-object p2, p2, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p2}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/gatt/ScanManager;->flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 576
    :cond_1
    return-void
.end method
