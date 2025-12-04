.class Lcom/android/bluetooth/util/BtInfoActivity$7;
.super Ljava/lang/Object;
.source "BtInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 182
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$7;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 185
    const-string p1, "vendor.bluetooth.setlescan"

    const-string v0, "N/A"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnable[vendor.bluetooth.setlescan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtInfoActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "true"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$7;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$400(Lcom/android/bluetooth/util/BtInfoActivity;)V

    .line 190
    return-void
.end method
