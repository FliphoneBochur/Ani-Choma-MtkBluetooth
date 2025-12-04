.class Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;
.super Ljava/lang/Object;
.source "PeriodicScanManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/PeriodicScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncDeathRecipient"
.end annotation


# instance fields
.field public callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/PeriodicScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/PeriodicScanManager;Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;->callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 94
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "BtGatt.SyncManager"

    const-string v1, "Binder is dead - unregistering advertising set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;->callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->stopSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 102
    return-void
.end method
