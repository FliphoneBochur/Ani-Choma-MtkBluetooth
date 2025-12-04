.class public Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BluetoothOppTransferAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    const v1, 0x7f070091

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    const-string v2, "status"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 72
    const-string v3, "direction"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 73
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const v4, 0x1080078

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :cond_0
    if-nez v3, :cond_1

    .line 77
    const v4, 0x7f060013

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :cond_1
    const v4, 0x7f060012

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    const v1, 0x7f070095

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    const-string v4, "hint"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    if-nez v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0094

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v1, 0x7f07008b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 94
    const-string v5, "destination"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 95
    nop

    .line 96
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 97
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const-string v1, "total_bytes"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 102
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    const v1, 0x7f070043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 109
    :cond_3
    const/4 p2, 0x1

    if-ne v3, p2, :cond_4

    .line 110
    const v2, 0x7f0e0044

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v6

    .line 110
    invoke-virtual {v0, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 113
    :cond_4
    const v2, 0x7f0e009f

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v6

    .line 113
    invoke-virtual {v0, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 116
    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_2
    const-string p2, "timestamp"

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 120
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 121
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 123
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 124
    :cond_5
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 125
    :goto_3
    const p3, 0x7f070042

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_6
    return-void
.end method
