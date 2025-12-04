.class Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;
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
    name = "ServerDeathRecipient"
.end annotation


# instance fields
.field mAppIf:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;->mAppIf:I

    .line 442
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 446
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder is dead - unregistering server ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;->mAppIf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;->mAppIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    .line 450
    return-void
.end method
