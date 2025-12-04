.class public Lcom/android/bluetooth/map/BluetoothMapSubAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothMapSubAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance p2, Lcom/mediatek/widget/AccountItemView;

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/mediatek/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_0
    check-cast p2, Lcom/mediatek/widget/AccountItemView;

    .line 62
    :goto_0
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 65
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p3

    const/4 v0, -0x1

    const v1, 0x1020006

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p3

    if-nez p3, :cond_1

    .line 67
    move-object p1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :goto_1
    invoke-virtual {p2, p1}, Lcom/mediatek/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2, v2}, Lcom/mediatek/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2, v1}, Lcom/mediatek/widget/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/mediatek/widget/AccountItemView;->setClickable(Z)V

    goto :goto_3

    .line 72
    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/mediatek/widget/AccountItemView;->setClickable(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    .line 75
    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_2
    invoke-virtual {p2, v2}, Lcom/mediatek/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mediatek/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2, v1}, Lcom/mediatek/widget/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :goto_3
    return-object p2
.end method

.method public setAdapterData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    .line 84
    return-void
.end method
