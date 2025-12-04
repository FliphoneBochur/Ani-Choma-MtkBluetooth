.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

.field final synthetic val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 254
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$700(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 255
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$400(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 257
    iget-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 258
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$500(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I

    move-result v2

    if-lez v2, :cond_0

    .line 259
    iput-boolean p2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 260
    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v1, v2, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    goto :goto_1

    .line 264
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v0, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$600(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V

    .line 266
    const/4 p2, 0x0

    .line 268
    :cond_1
    :goto_1
    goto :goto_0

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->val$groupItem:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean p2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 271
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->notifyDataSetChanged()V

    .line 272
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3$1;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$3;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method
