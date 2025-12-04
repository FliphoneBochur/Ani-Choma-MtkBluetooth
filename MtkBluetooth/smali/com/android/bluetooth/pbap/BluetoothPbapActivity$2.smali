.class Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;
.super Landroid/os/Handler;
.source "BluetoothPbapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 273
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 276
    const-string p1, "BluetoothPbapActivity"

    const-string v0, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 279
    nop

    .line 283
    :goto_0
    return-void
.end method
