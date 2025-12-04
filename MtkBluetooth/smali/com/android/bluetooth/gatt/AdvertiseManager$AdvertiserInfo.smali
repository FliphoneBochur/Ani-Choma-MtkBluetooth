.class Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdvertiserInfo"
.end annotation


# instance fields
.field public callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

.field public deathRecipient:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;

.field public id:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/Integer;Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->id:Ljava/lang/Integer;

    .line 103
    iput-object p3, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->deathRecipient:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;

    .line 104
    iput-object p4, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 105
    return-void
.end method
