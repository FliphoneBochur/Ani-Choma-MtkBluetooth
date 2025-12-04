.class Lcom/android/bluetooth/gatt/GattService$ScannerMap;
.super Lcom/android/bluetooth/gatt/ContextMap;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScannerMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/bluetooth/gatt/ContextMap<",
        "Landroid/bluetooth/le/IScannerCallback;",
        "Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ContextMap;-><init>()V

    return-void
.end method
