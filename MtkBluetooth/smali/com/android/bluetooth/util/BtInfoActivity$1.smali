.class Lcom/android/bluetooth/util/BtInfoActivity$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BtInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/util/BtInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/util/BtInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/util/BtInfoActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$1;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFailed errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtInfoActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$1;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$100(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity$1;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {v0}, Lcom/android/bluetooth/util/BtInfoActivity;->access$000(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanResult callbackType:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtInfoActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$1;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$100(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/util/BtInfoActivity$1;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p2}, Lcom/android/bluetooth/util/BtInfoActivity;->access$000(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
