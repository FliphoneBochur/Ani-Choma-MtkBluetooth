.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

.field final synthetic val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;ILcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$groupPosition:I

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 124
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$groupPosition:I

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 127
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean p2, v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 128
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 129
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {p2, p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$400(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object p2

    .line 130
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 131
    nop

    .line 132
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$500(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I

    move-result v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    if-ltz v4, :cond_2

    .line 134
    move v4, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 135
    if-eq v4, v3, :cond_0

    .line 136
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 137
    iget-boolean v5, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-nez v5, :cond_0

    .line 138
    nop

    .line 139
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->sCheckedChilds:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 140
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move p2, v2

    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_1
    goto :goto_2

    .line 147
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v3, p2, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0e0017

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$600(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean v2, p2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    move p2, v2

    .line 152
    :goto_2
    if-eqz p2, :cond_4

    .line 153
    iput-boolean v1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 154
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->sCheckedChilds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 155
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 156
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->sCheckedChilds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    .line 163
    :cond_4
    goto :goto_3

    .line 164
    :cond_5
    iget-boolean p2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz p2, :cond_6

    .line 165
    iput-boolean v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 166
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    .line 167
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->sCheckedChilds:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    .line 170
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->sCheckedChilds:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_3
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->notifyDataSetChanged()V

    .line 175
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq p1, v0, :cond_7

    .line 176
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 179
    :cond_7
    return-void
.end method
