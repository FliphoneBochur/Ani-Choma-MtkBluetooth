.class Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;
.super Ljava/lang/Object;
.source "PeriodicScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/PeriodicScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncInfo"
.end annotation


# instance fields
.field public callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

.field public deathRecipient:Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;

.field public id:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/PeriodicScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/PeriodicScanManager;Ljava/lang/Integer;Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->this$0:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->id:Ljava/lang/Integer;

    .line 80
    iput-object p3, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->deathRecipient:Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;

    .line 81
    iput-object p4, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 82
    return-void
.end method
