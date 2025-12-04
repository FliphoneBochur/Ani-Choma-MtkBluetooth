.class Lcom/android/bluetooth/util/BtInfoActivity$8;
.super Ljava/lang/Object;
.source "BtInfoActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 193
    iput-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$500(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Thread;

    move-result-object p1

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {v1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$600(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/android/bluetooth/util/BtInfoActivity;->access$502(Lcom/android/bluetooth/util/BtInfoActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$800(Lcom/android/bluetooth/util/BtInfoActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/util/BtInfoActivity;->access$702(Lcom/android/bluetooth/util/BtInfoActivity;Z)Z

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged: isChecked"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ";bRefresh"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p2}, Lcom/android/bluetooth/util/BtInfoActivity;->access$700(Lcom/android/bluetooth/util/BtInfoActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtInfoActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$700(Lcom/android/bluetooth/util/BtInfoActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    invoke-static {p1}, Lcom/android/bluetooth/util/BtInfoActivity;->access$500(Lcom/android/bluetooth/util/BtInfoActivity;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/util/BtInfoActivity$8;->this$0:Lcom/android/bluetooth/util/BtInfoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/bluetooth/util/BtInfoActivity;->access$502(Lcom/android/bluetooth/util/BtInfoActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 207
    :goto_0
    return-void
.end method
