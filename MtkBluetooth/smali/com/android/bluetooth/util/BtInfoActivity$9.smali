.class Lcom/android/bluetooth/util/BtInfoActivity$9;
.super Ljava/lang/Object;
.source "BtInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 210
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$9;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity$9;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {v0}, Lcom/android/bluetooth/util/BtInfoActivity;->access$700(Lcom/android/bluetooth/util/BtInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity$9;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    new-instance v1, Lcom/android/bluetooth/util/BtInfoActivity$9$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/util/BtInfoActivity$9$1;-><init>(Lcom/android/bluetooth/util/BtInfoActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/util/BtInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :cond_0
    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 231
    :goto_1
    return-void
.end method
