.class Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPbapContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 180
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 185
    const-string p1, "BluetoothPbapService"

    const-string v0, " onChange on contact uri "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$BluetoothPbapContentObserver;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 187
    return-void
.end method
