.class Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdvertisingSetDeathRecipient"
.end annotation


# instance fields
.field public callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 117
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/android/bluetooth/gatt/AdvertiseManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "BtGatt.AdvertiseManager"

    const-string v1, "Binder is dead - unregistering advertising set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 125
    return-void
.end method
