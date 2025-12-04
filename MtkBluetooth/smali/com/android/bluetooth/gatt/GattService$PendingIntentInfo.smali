.class Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;
.super Ljava/lang/Object;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingIntentInfo"
.end annotation


# instance fields
.field public callingPackage:Ljava/lang/String;

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/app/PendingIntent;

.field public settings:Landroid/bluetooth/le/ScanSettings;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 134
    instance-of v0, p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    if-nez v0, :cond_0

    .line 135
    const/4 p1, 0x0

    return p1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->intent:Landroid/app/PendingIntent;

    check-cast p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    iget-object p1, p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
