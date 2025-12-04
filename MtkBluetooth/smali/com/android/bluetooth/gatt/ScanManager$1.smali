.class Lcom/android/bluetooth/gatt/ScanManager$1;
.super Ljava/lang/Object;
.source "ScanManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

    .line 1384
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$1;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 1386
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 1393
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$1;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$1;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1200(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1394
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$1;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2200(Lcom/android/bluetooth/gatt/ScanManager;ILcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    .line 1396
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$1;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2200(Lcom/android/bluetooth/gatt/ScanManager;ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 1398
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 1389
    return-void
.end method
