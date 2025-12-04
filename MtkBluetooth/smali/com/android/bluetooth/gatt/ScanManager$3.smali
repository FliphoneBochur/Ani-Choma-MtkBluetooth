.class Lcom/android/bluetooth/gatt/ScanManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$3;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1419
    const-string p2, "android.location.MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1420
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$3;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1200(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    .line 1421
    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$3;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1422
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$3;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v0, 0x5

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/gatt/ScanManager;->access$2200(Lcom/android/bluetooth/gatt/ScanManager;ILcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 1424
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$3;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v0, 0x4

    invoke-static {p1, v0, p2}, Lcom/android/bluetooth/gatt/ScanManager;->access$2200(Lcom/android/bluetooth/gatt/ScanManager;ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 1427
    :cond_1
    :goto_0
    return-void
.end method
