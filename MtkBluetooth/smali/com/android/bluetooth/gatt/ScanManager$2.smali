.class Lcom/android/bluetooth/gatt/ScanManager$2;
.super Ljava/lang/Object;
.source "ScanManager.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


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

    .line 1402
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$2;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidImportance(II)V
    .locals 3

    .line 1405
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$2;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAppScanStatsByUid(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1406
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1407
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1408
    new-instance v1, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$2;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;-><init>(Lcom/android/bluetooth/gatt/ScanManager;II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1409
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$2;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1411
    :cond_0
    return-void
.end method
