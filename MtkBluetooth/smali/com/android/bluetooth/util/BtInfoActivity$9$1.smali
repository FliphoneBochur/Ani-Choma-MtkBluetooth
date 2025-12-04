.class Lcom/android/bluetooth/util/BtInfoActivity$9$1;
.super Ljava/lang/Object;
.source "BtInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/util/BtInfoActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/util/BtInfoActivity$9;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/util/BtInfoActivity$9;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$9$1;->this$1:Lcom/android/bluetooth/util/BtInfoActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    const-string v0, "BtInfoActivity"

    const-string v1, "runOnUiThread to update info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/util/BtInfoActivity$9$1;->this$1:Lcom/android/bluetooth/util/BtInfoActivity$9;

    iget-object v0, v0, Lcom/android/bluetooth/util/BtInfoActivity$9;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {v0}, Lcom/android/bluetooth/util/BtInfoActivity;->access$1000(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity$9$1;->this$1:Lcom/android/bluetooth/util/BtInfoActivity$9;

    iget-object v1, v1, Lcom/android/bluetooth/util/BtInfoActivity$9;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {v1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$900(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method
