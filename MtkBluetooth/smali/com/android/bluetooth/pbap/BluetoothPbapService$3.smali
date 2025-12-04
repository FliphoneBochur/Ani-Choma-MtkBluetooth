.class Lcom/android/bluetooth/pbap/BluetoothPbapService$3;
.super Ljava/lang/Object;
.source "BluetoothPbapService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;->updateSecondaryVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 858
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Lcom/android/bluetooth/pbap/BluetoothPbapService$PbapHandler;

    move-result-object v1

    .line 857
    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->updateSecondaryVersionCounter(Landroid/content/Context;Landroid/os/Handler;)V

    .line 859
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 860
    return-void
.end method
