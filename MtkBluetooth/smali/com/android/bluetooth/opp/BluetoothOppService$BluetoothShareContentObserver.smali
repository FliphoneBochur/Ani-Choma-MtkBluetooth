.class Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothShareContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 96
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 101
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    const-string p1, "BtOppService"

    const-string v0, "ContentObserver received notification"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$100(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 105
    return-void
.end method
